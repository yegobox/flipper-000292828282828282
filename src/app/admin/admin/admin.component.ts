import { Component, OnInit, OnDestroy } from '@angular/core';
import { CurrentUser } from '../../core/guards/current-user';
import { PouchConfig, PouchDBService } from '@enexus/flipper-components';


@Component({
  selector: 'app-admin',
  templateUrl: './admin.component.html',
  styleUrls: ['./admin.component.scss']
})
export class AdminComponent implements OnInit, OnDestroy {

  userToggledMenu: any;

   constructor(
    private database: PouchDBService,
    public currentUser: CurrentUser) {
    
    }


  ngOnDestroy() {}

   async ngOnInit() {
    await this.currentUser.user();
    


  }
  isMenuToggled(event) {
    this.userToggledMenu = event;
  }


  displaySwitchedBranch(event) {

  }
  async didUserLoggedOut(event) {
    
    await this.currentUser.user();
    
        if (this.currentUser.currentUser ) {
         
          this.currentUser.currentUser.active=false;
          console.log(this.currentUser.currentUser);
          await this.database.put(PouchConfig.Tables.user, this.currentUser.currentUser);
        }
    window.localStorage.setItem('channel',this.database.uid());

    return window.location.href='/login';
  }



}
