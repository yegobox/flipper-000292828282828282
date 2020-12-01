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
import { CurrentBusinessEvent, CurrentBranchEvent, UserLoggedEvent } from '@enexus/flipper-components';
import { filter } from 'rxjs/operators';


@Injectable({
  providedIn: 'root'
})
export class HasBusinessGuard implements CanActivate, CanActivateChild, CanLoad {
  constructor(private eventBus: FlipperEventBusService, private user: CurrentUser, private router: Router) {

    this.eventBus.of<UserLoggedEvent>(UserLoggedEvent.CHANNEL)
      .pipe(filter(e => e.user && (e.user.id !== null || e.user.id !== undefined)))
      .subscribe(res =>
        this.user.currentUser = res.user);


    this.eventBus.of<CurrentBusinessEvent>(CurrentBusinessEvent.CHANNEL)
      .subscribe(res =>
        this.user.currentBusiness = res.business);

    this.eventBus.of<CurrentBranchEvent>(CurrentBranchEvent.CHANNEL)
      .subscribe(res =>
        this.user.currentBranch = res.branch);

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

    await this.user.user();
    if (this.user.currentUser && this.user.currentUser.active == true) {
      await this.user.defaultBusiness(this.user.currentUser.id);

      if (this.user.currentBusiness && this.user.currentBusiness.active==true) {
        return true;
      }
    }

    this.router.navigate(['/setup/business/new']);
    return false;
  }

}
