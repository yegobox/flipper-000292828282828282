import { Injectable } from '@angular/core';
import { CanActivate, Router, ActivatedRouteSnapshot, RouterStateSnapshot, CanActivateChild, CanLoad, Route } from '@angular/router';
import { CurrentUser } from './current-user';
import { FlipperEventBusService } from '@enexus/flipper-event';
import { filter } from 'rxjs/internal/operators';
import { PouchDBService, UserLoggedEvent} from '@enexus/flipper-components';

@Injectable({
  providedIn: 'root'
})
export class AuthGuard implements CanActivate, CanActivateChild, CanLoad {
  // done
  constructor(private eventBus: FlipperEventBusService,
    private database: PouchDBService,
    private currentUser: CurrentUser,
    private router: Router) {
    this.eventBus.of<UserLoggedEvent>(UserLoggedEvent.CHANNEL)
      .pipe(filter(e => e.user && (e.user.id !== null || e.user.id !== undefined)))
      .subscribe(res => {
        console.info('got new user logged in from event',res);
        this.currentUser.currentUser = res.user;
        // on getting the user change then we need to change the sync filter too!
        this.database.sync([this.currentUser.currentUser.id]);
      });

  }

  canActivate(_route: ActivatedRouteSnapshot, state: RouterStateSnapshot) {
    return this.handle(state.url);
  }

  canActivateChild(_route: ActivatedRouteSnapshot, state: RouterStateSnapshot) {
    return this.handle(state.url);
  }
  canLoad(route: Route) {
    return this.handle(route.path);
  }


  private async handle(url: string) {

    await this.currentUser.user();

    if (this.currentUser.currentUser && this.currentUser.currentUser.id && this.currentUser.currentUser.active == true) {
      this.currentUser.defaultBusiness(this.currentUser.currentUser.id);
      return true;
    }

    this.currentUser.redirectUri = url;

    this.router.navigate(['/login']);
    return false;
  }

}
