import { Injectable } from '@angular/core';

import { FlipperEventBusService } from '@enexus/flipper-event';
import {
  MenuEntries, Business, Branch, Subscription,
  PouchDBService, PouchConfig, Tables, Menu,
  UserLoggedEvent, UserSubscriptionEvent,
  CurrentBusinessEvent,
  User
} from '@enexus/flipper-components';

import { CurrentBranchEvent } from '@enexus/flipper-components';
import { ModelService } from '@enexus/flipper-offline-database';

@Injectable({
  providedIn: 'root'
})
export class CurrentUser {
  public redirectUri?: string;
  public userInfo = null;
  public current: MenuEntries;
  currentUser: User = null;
  currentBusiness: Business = null;
  currentBranch: Branch = null;
  currentSubscription: Subscription = null;

  constructor(private eventBus: FlipperEventBusService, private model: ModelService,
    private database: PouchDBService) {
    this.database.connect(PouchConfig.bucket, window.localStorage.getItem('channel'));


    // this.eventBus.of < UserLoggedEvent > (UserLoggedEvent.CHANNEL)
    // .pipe(filter(e => e.user && (e.user.id !== null ||  e.user.id !==undefined)))
    // .subscribe(res =>
    //   this.currentUser = res.user);

    //   this.eventBus.of < CurrentBusinessEvent > (CurrentBusinessEvent.CHANNEL)
    //   .pipe(filter(e => e.business && (e.business.id !== null ||  e.business.id !==undefined)))
    //   .subscribe(res =>
    //     this.currentBusiness = res.business);

    //   this.eventBus.of < CurrentBranchEvent > (CurrentBranchEvent.CHANNEL)
    //     .subscribe(res =>
    //       this.currentBranch = res.branch);
  }

  public get<K extends keyof User>(prop: K): User[K] {
    return this.currentUser && this.currentUser[prop];
  }


  public set(key: string, value: any): void {
    this.currentUser[key] = value;
  }


  public async user() {

    await this.database.activeUser().then((res: { docs: string | any[]; }) => {
      if (res.docs && res.docs.length > 0) {
       
        this.eventBus.publish(new UserLoggedEvent(res.docs[0]));
      }
    }, error => {
      if (error.error && error.status === '404' || error.status === 404) {
        this.eventBus.publish(new UserLoggedEvent(null));
      }
    });


  }

  public async subscription() {

    await this.database.get(PouchConfig.Tables.subscription).then((res: Subscription) => {

      this.eventBus.publish(new UserSubscriptionEvent(res));

    }, (error: { error: any; status: string | number; }) => {
      if (error.error && error.status === '404' || error.status === 404) {
        this.eventBus.publish(new UserSubscriptionEvent(null));
      }
    });


  }

  public async defaultBusiness(userId) {


    await this.database.activeBusiness(userId).then((res: { docs: string | any[]; }) => {

      if (res.docs && res.docs.length > 0) {
        this.eventBus.publish(new CurrentBusinessEvent(res.docs[0]));
      }

    }, (error: { error: any; status: string | number; }) => {

      if (error.error && error.status === '404' || error.status === 404) {
        this.eventBus.publish(new CurrentBusinessEvent(null));
      }
    });

  }

  public  getBusiness() {
    return this.database.query(['table'], {
      table: { $eq: 'businesses' }
  }).then(res => {
      if (res.docs && res.docs.length > 0) {
        
      } else {
          return [];
      }

  });
  }


  public async defaultBranch() {
    if (this.currentBusiness) {

      await this.database.activeBranch(this.currentBusiness.id).then((res: { docs: Branch[]; }) => {
        this.eventBus.publish(new CurrentBranchEvent(res.docs[0]));
      }, (error: { error: any; status: string | number; }) => {
        if (error.error && error.status === '404' || error.status === 404) {
          this.eventBus.publish(new CurrentBranchEvent(null));
        }
      });
    }
  }


  public userLoggedIn() {
    return this.database.find(PouchConfig.Tables.user).then(res => {
      if (res) {
        return res;
      }
      return null;
    });
  }


  public userHasBusiness() {
    return this.model.active<Business>(Tables.business);
  }

  public activeMenu() {
    return this.model.active<Menu>(Tables.menu);
  }



  public insertUser(user: User) {
    return this.model.create<User>(Tables.user, [user]);
  }

  public updateUser(user: User, id: number) {
    return this.model.update<User>(Tables.user, user, id);
  }



  public getRedirectUri(): string {
    let uri = null;
    uri = this.redirectUri;
    this.redirectUri = null;
    return uri;
  }

}
