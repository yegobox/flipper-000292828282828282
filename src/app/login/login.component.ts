import { Component, OnInit, NgZone } from '@angular/core';
import { CurrentUser } from '../core/guards/current-user';
import { ElectronService } from '../core/services';
import { trigger, transition, useAnimation } from '@angular/animations';
import { AnyEvent, CurrentBusinessEvent, fadeInAnimation, PouchConfig, PouchDBService, UserLoggedEvent } from '@enexus/flipper-components';
import { FlipperEventBusService } from '@enexus/flipper-event';
import { filter } from 'rxjs/internal/operators';
import { environment } from '../../environments/environment';
import { PusherService } from '../pusher.service';
declare const Pusher: any;


@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss'],
  animations: [
    trigger('insertLogin', [
      transition(':enter', useAnimation(fadeInAnimation, { params: { duration: '1s' } }))
    ]),
  ],
})
export class LoginComponent implements OnInit {
  user: Array<any>;
  qrcode: any;
  pushers: any;
  flipperPlan = [];
  loginApproved: any;
  constructor(
    private pusher: PusherService,
    private eventBus: FlipperEventBusService, private database: PouchDBService,
    public currentUser: CurrentUser, private ngZone: NgZone, public electronService: ElectronService) {
    this.database.connect(PouchConfig.bucket);

    this.eventBus.of<CurrentBusinessEvent>(CurrentBusinessEvent.CHANNEL)
      .subscribe(res =>
        this.currentUser.currentBusiness = res.business);
  }
  ngOnInit() {
    this.qrcode = Date.now();
    this.eventBus.of<UserLoggedEvent>(UserLoggedEvent.CHANNEL)
      .pipe(filter(e => e.user && (e.user.id !== null || e.user.id !== undefined)))
      .subscribe(res =>
        this.currentUser.currentUser = res.user);
    if (PouchConfig.canSync) {
      this.database.sync([localStorage.getItem('userId')]);
    }
    this.electronService.ipcRenderer.on('received-login-message', (event, arg) => {
      console.log('here', event);
      this.ngZone.run(async () => {
        if (arg && arg.length > 0) {
          const user = {
            _id: '',
            name: arg[1].replace('%20', ' '),
            email: arg[0].replace('%20', ' '),
            token: arg[3].replace('%20', ' '),
            active: true,
            createdAt: new Date().toISOString(),
            updatedAt: new Date().toISOString(),
            id: arg[4].replace('%20', ' '),
            userId: arg[4].replace('%20', ' '),
            table: 'users',
            channels: [],
            expiresAt: 1606521600000  //Date.parse(arg[6]) as number
          };
          user.channels = [user.id];
          window.localStorage.setItem('channel', arg[4].replace('%20', ' '));
          PouchConfig.Tables.user = 'user_' + window.localStorage.getItem('channel');
          PouchConfig.channel = window.localStorage.getItem('channel');
          await this.database.put(PouchConfig.Tables.user, this.currentUser.currentUser);

          return window.location.href = '/admin';

        }
      });
    });

    // use Qr code to log in
    this.pushers = new Pusher(environment.pusher.key,
      {
        cluster: environment.pusher.cluster,
        encrypted: environment.pusher.cluster,
      });
    this.loginApproved = this.pushers.subscribe('login-flipper.' + this.qrcode);

    this.loginApproved.bind('event-login-flipper.' + this.qrcode, async (event) => {

      if (event) {
        const user = {
          _id: '',
          name: event.name,
          email: event.email,
          token: event.personal_token,
          active: true,
          createdAt: new Date().toISOString(),
          updatedAt: new Date().toISOString(),
          id: event.id.toString(),
          userId: event.id.toString(),
          table: 'users',
          channels: [],
          expiresAt: 1606521600000 //FIXME: this should come from API event.expiresAt as number
        };

        window.localStorage.setItem('channel', event.id.toString());

        PouchConfig.Tables.user = 'user_' + window.localStorage.getItem('channel');
        PouchConfig.channel = window.localStorage.getItem('channel');
        localStorage.setItem('userId', user.id.toString());
        user.channels = [user.id];

        //TODO: IF BUSINESS IS NULL , DO SYNC THEN REDIRECT OTHERWISE DO REDIRECT WITHOUT SYNING
        let async: any = this.database.sync([user.id]);
        this.eventBus.publish(new UserLoggedEvent(user));
        await this.database.put(PouchConfig.Tables.user, user);
        await this.currentUser.defaultBusiness(user.id);

        if (!this.currentUser.currentBusiness) {

          async.on('change', (info: any) => {

            return window.location.href = '/admin';

          }).on('paused', (err: any) => {
            console.log("sync paused", err)
          }).on('active', () => {
            console.log("sync active")
          }).on('denied', (err: any) => {
            console.log('denied', err);
          }).on('complete', (info: any) => {
            console.log("sync complete")
          }).on('error', (err) => {
            console.log("sync error", err)
          });
        } else {
          return window.location.href = '/admin';
        }

      }
    });
    // end of deal here
  }
  userLogin() {
    this.electronService.ipcRenderer.send('sent-login-message', environment.appUrl);
  }
  getStaredNewToFlipper() {
    this.electronService.redirect('https://flipper.rw');
  }
}