import { Component, OnInit } from '@angular/core';
import { CurrentUser } from '../core/guards/current-user';
import { ElectronService } from '../core/services';
import { trigger, transition, useAnimation } from '@angular/animations';
import { fadeInAnimation, PouchConfig, PouchDBService, User, UserLoggedEvent } from '@enexus/flipper-components';
import { FlipperEventBusService } from '@enexus/flipper-event';
import { filter, finalize } from 'rxjs/internal/operators';
import { HttpHeaders, HttpClient } from '@angular/common/http';
import { BehaviorSubject } from 'rxjs';
import { CardValidationComponent } from './validate-card/validate-card.component';
import { environment } from '../../environments/environment';
import { DialogService, DialogSize } from '@enexus/flipper-dialog';

import { AngularFirestore } from '@angular/fire/firestore';
import { FormGroup, FormControl, Validators } from '@angular/forms';
import { PusherService } from '../pusher.service';
import { PaidSuccessComponent } from './paid-success/paid-success.component';
import { Router } from '@angular/router';
// import console from 'console';

export class Response {
  message: Message;

}
export class Plan {
  amount: number;

}
export class Data {
  txRef?: any;
  code?: string;
  flwRef?: string;
  raveRef?: string;
  amount?: any;
  currency?: any;
  message?: string;
  customer?: Customer;
  customerId?: any;
  chargeResponseMessage?: any;
  status?: any;

}
export class Message {
  status?: string;
  meta:any;
  data: Data;
  message?: string;
  expiresAt?: any;
}
export class Customer {
  id?: number; accountId?: any;
  fullName?: string;
}

@Component({
  selector: 'app-subscription',
  templateUrl: './subscription.component.html',
  styleUrls: ['./subscription.component.scss'],
  animations: [
    trigger('insertLogin', [
      transition(':enter', useAnimation(fadeInAnimation, { params: { duration: '1s' } }))
    ]),
  ],
})
export class SubscriptionComponent implements OnInit {


  constructor(private pusher: PusherService,
              private firestore: AngularFirestore,
              private router: Router,
              public dialog: DialogService, private eventBus: FlipperEventBusService, private database: PouchDBService,
              public currentUser: CurrentUser,
              public electronService: ElectronService, protected httpClient: HttpClient) {
    this.database.connect(PouchConfig.bucket,window.localStorage.getItem('channel'));
  }

  get mobilephone() {
    return this.buyForm.get('mobilephone');
  }

  get amount() {
    return this.buyForm.get('amount');
  }
  user: Array<any>;
  public loading = new BehaviorSubject(false);
  public ccNumMissingTxt = new BehaviorSubject('CCV number is required');
  public cardExpiredTxt = new BehaviorSubject('Card has expired');
  message = { message: null, momo: null, error: false };
  flipperPlan = 0;
  buyForm: FormGroup;
  currency = 'RWF';
  showCard = false;
  color = 'primary';
  public totalAmount: any = null;
  today = new Date();

  step = 0;
  isFocused: any = '';
  redirectMomo=null;
  ngOnInit() {
    const userId = this.currentUser.get('userId') as number;

    this.pusher.handleDomainMessage.bind('event-handle-domain-message-flipper.'
      + userId, (event) => {
        if (event) {

          this.message.error = true;
          this.message.message = event.message;

        }
      });


    this.pusher.paymentApproved.bind('event-payment-message-flipper.' + userId, (event) => {
// console.table(event);
      if (event) {
        if (event.payment_status === 'approved') {
          this.message.error = false;
          this.message.message = '';
          this.message.momo = '';
          this.currentUser.currentUser.expiresAt = Date.parse(event.expiresAt);
          this.database.put(PouchConfig.Tables.user, this.currentUser.currentUser);

          this.openDialog(true, event);

        } else {
          this.openDialog(false, event);
        }
      }
    });

    this.eventBus.of<UserLoggedEvent>(UserLoggedEvent.CHANNEL)
      .pipe(filter(e => e.user && (e.user.id !== null || e.user.id !== undefined)))
      .subscribe(res =>
        this.currentUser.currentUser = res.user);

    if (PouchConfig.canSync) {
      this.database.sync([PouchConfig.syncUrl]);
    }

    this.getFlipperPlan().valueChanges().subscribe(res => {

      if (res) {
        const plan: Plan[] = res as Plan[];
        this.flipperPlan = plan[0].amount;
      }
    });



    this.buyForm = new FormGroup({
      mobilephone: new FormControl('', [Validators.required]),
    });

  }

  openDialog(success, event) {

    return this.dialog.open(PaidSuccessComponent, DialogSize.SIZE_MD, { success, event })
      .subscribe(result => {
        const today = this.today.getFullYear()
          + '-' + ('0' + (this.today.getMonth() + 1)).slice(-2)
          + '-' + ('0' + this.today.getDate()).slice(-2);

        if (success) {
          const subscription = {
            id: this.database.uid(),
            userId: this.currentUser.currentUser.userId,
            subscriptionType: 'monthly',
            lastPaymentDate: today,
            nextPaymentDate: event.expiresAt,
            status: 'success',
            didSubscribed: true,
            createdAt: new Date(),
            updatedAt: new Date(),
            table:'subscription',
            docId:PouchConfig.Tables.subscription
          };


          this.database.put(PouchConfig.Tables.subscription, subscription);
            return  this.router.navigate(['/admin']);
          
        }

      });
  }

  getFlipperPlan() {

    return this.firestore.collection('flipper-plan');

  }

  submitCard(data) {

    const formSubscription = {
      cardno: data.cardNumber,
      expirymonth: data.expirationMonth,
      expiryyear: data.expirationYear,
      vcc: data.ccv,
      email: this.currentUser.get('email'),
      firstname: data.cardHolder,
      lastname: data.cardHolder,
      planid: '5422',
      phone: '07888888888',
      amount: this.flipperPlan,
      pay_type: 'CARD',
      appname:'FLIPPER',
      currency:'RWF',
      userId: this.currentUser.currentUser.id
    };

    return this.confirmPayment(formSubscription, 'CARD');
  }

  submitMomo() {
    const formSubscription = {
      cardno: '',
      expirymonth: '',
      expiryyear: '',
      vcc: '',
      email: this.buyForm.value.email,
      firstname: this.currentUser.get('name'),
      lastname: this.currentUser.get('name'),
      planid: '5422',
      phone: this.buyForm.value.mobilephone,
      amount: this.flipperPlan,
      pay_type: 'MOMO-RWANDA',
      userId: this.currentUser.currentUser.id,
      appname:'FLIPPER',
      currency:'RWF'
    };

    this.message.error = false;
    this.message.message = '';
    if (!this.buyForm.value.mobilephone) {
      this.message.error = true;
      this.message.message = 'Mobile number is required';
    }

    return this.confirmPayment(formSubscription, 'MOMO');
  }



  confirmPayment(creds, payType) {

    const headers = new HttpHeaders({
      'Content-Type': 'aapplication/json', Accept: 'application/json',
      'Access-Control-Allow-Origin': '*', 'Access-Control-Allow-Credentials': '*', Authorization: 'Bearer '
        + this.currentUser.currentUser.token
    });

    this.loading.next(true);
    this.ccNumMissingTxt.next('');
    this.cardExpiredTxt.next('');
    this.message.error = false;
    this.message.message = '';
    this.redirectMomo="";
    return this.httpClient
      .post(environment.appUrl + 'api/pay',
        creds, { headers }).pipe(finalize(() => this.loading.next(false)))
      .subscribe(res => {
        this.loading.next(false);
        const response: Response = res as Response;
        // console.log(response);
        if (response.message.status === 'error') {
          if (response.message.data.code === 'CARD_ERR') {
            this.ccNumMissingTxt.next(response.message.data.message);
          }
          if (response.message.data.code === 'ERR') {
            this.cardExpiredTxt.next('Card has expired');
          }

        } else
          if (response.message.status === 'success') {
            if (payType === 'MOMO') {
              this.message.error = false;
              if(response.message.meta && response.message.meta.authorization && response.message.meta.authorization.mode=='redirect'){

                this.redirectMomo=response.message.meta.authorization.redirect;

              }else{
                this.message.message = response.message.data.chargeResponseMessage;
              }
              

            } else {

              if (response.message.data.status === 'approved'
                || response.message.data.status === 'successful'
                || response.message.data.status === 'Approved'
                || response.message.data.status === 'Successful') {
                return this.saveExpiredDate();
              } else {
                this.message.error = false;
                this.message.message = response.message.data.chargeResponseMessage;
                this.openValidateCardDialog(response.message.data);
              }

            }

          } else {

            this.message.error = true;
            this.message.message = response.message.message as any;
          }

      }, error => {
        this.loading.next(false);
        this.message.error = true;
        this.message.message = 'Something went wrong, maybe you are not connected to the internet!';
        console.log(error);

      });

  }

  saveExpiredDate() {

    const headers = new HttpHeaders({
      'Content-Type': 'aapplication/json', Accept: 'application/json',
      'Access-Control-Allow-Origin': '*', 'Access-Control-Allow-Credentials': '*', Authorization: 'Bearer '
        + this.currentUser.currentUser.token
    });

    this.loading.next(true);

    return this.httpClient
      .get(environment.appUrl + 'api/save-expired-at/' + this.currentUser.get('userId'), { headers })
      .pipe(finalize(() => this.loading.next(false)))
      .subscribe(res => {
        const resp: Message = res as Message;
        
        this.loading.next(false);
        const data: User = resp.data as User;
        if (resp.status === 'success') {
          this.message.error = false;
          this.message.message = '';
          this.message.momo = '';
          this.currentUser.currentUser.expiresAt = Date.parse(data.expiresAt);
          // console.log(this.currentUser.currentUser);
          this.database.put(PouchConfig.Tables.user, this.currentUser.currentUser);
          return this.openDialog(true, data);
        }
      });
  }

  openValidateCardDialog(obj) {

    return this.dialog.open(CardValidationComponent, DialogSize.SIZE_MD, obj).subscribe(result => {
      // console.log(result);
      if (result === 'success') {
        return this.saveExpiredDate();
      }

    });
  }



  /**
   * Parse JSON without throwing errors.
   */

  getStaredNewToFlipper() {
    this.electronService.redirect('https://flipper.rw');
  }


  setStep(index: number) {
    this.step = index;
  }

  nextStep() {
    this.step++;
  }

  prevStep() {
    this.step--;
  }

  focusing(value: any) {
    this.isFocused = value;
    this.buyForm.controls.mobilephone.setValue('');
  }
  focusingOut() {
    this.isFocused = '';
  }

  async logout(){

   await this.currentUser.user();
    console.log(this.currentUser.currentUser);
        if (this.currentUser.currentUser) {
          this.currentUser.currentUser.active=false;
          await this.database.put(PouchConfig.Tables.user, this.currentUser.currentUser);
        }

    window.localStorage.setItem('channel',this.database.uid());
      this.currentUser.redirectUri='login';
      return  this.router.navigate(['/login']);
  }
}
