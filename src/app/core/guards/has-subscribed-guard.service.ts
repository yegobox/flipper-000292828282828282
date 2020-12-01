import { Injectable } from '@angular/core';
import {
  CanActivate,
  Router,
  ActivatedRouteSnapshot,
  RouterStateSnapshot,
  CanActivateChild,
  CanLoad,
  Route
} from '@angular/router';
import { CurrentUser } from './current-user';
import { FlipperEventBusService } from '@enexus/flipper-event';
import { filter } from 'rxjs/internal/operators';
import { UserSubscriptionEvent } from '@enexus/flipper-components';
import { environment } from '../../../environments/environment';

@Injectable({
  providedIn: 'root'
})
export class HasSubscribedGuard implements CanActivate, CanActivateChild, CanLoad {
  today=new Date();
  constructor(private eventBus: FlipperEventBusService,
              private currentUser: CurrentUser, private router: Router) {
    this.eventBus.of < UserSubscriptionEvent > (UserSubscriptionEvent.CHANNEL)
    .pipe(filter(e =>e.subscription && e.subscription.didSubscribed))
    .subscribe(res =>
      this.currentUser.currentSubscription = res.subscription);
  }

  canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot) {

    return this.handle(state.url);
  }

  canActivateChild(route: ActivatedRouteSnapshot, state: RouterStateSnapshot) {
    return this.handle(state.url);
  }
  canLoad(route: Route) {
    return this.handle(route.path);
  }

  private async handle(url: string) {

    if(!environment.production){
      return true;
    }
    const today= this.today.getFullYear() + '-'
     + ('0' + (this.today.getMonth() + 1)).slice(-2)
     + '-' + ('0' + this.today.getDate()).slice(-2);
    const date: number=Date.parse(today) as number;

    await this.currentUser.user();

    if(this.currentUser.currentUser && this.currentUser.currentUser.expiresAt >= date) {
     
      return true;
    }
  

    this.currentUser.redirectUri = url;
    this.router.navigate(['/pay-now']);
    return false;
  }

}
