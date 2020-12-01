import { Component, OnInit } from '@angular/core';
import { ElectronService } from './core/services';
import { TranslateService } from '@ngx-translate/core';
import { Router, NavigationEnd } from '@angular/router';
import { Menu, Tables, PouchConfig, PouchDBService, CurrentBusinessEvent } from '@enexus/flipper-components';
import { FlipperEventBusService } from '@enexus/flipper-event';
// import {MessagingService} from './messaging.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent implements OnInit {
  message: any;
  constructor(
    private eventBus: FlipperEventBusService,
    private router: Router,
    public electronService: ElectronService,
    private translate: TranslateService,
    private database: PouchDBService) {
    this.translate.setDefaultLang('en');
    this.eventBus.of<CurrentBusinessEvent>(CurrentBusinessEvent.CHANNEL)
      .subscribe(() => {
        // if(!res.business)return;
        //console.log("userId",res.business.userId);
        this.database.connect(PouchConfig.bucket,localStorage.getItem('channel'));
        
        // if (PouchConfig.canSync) {
          this.database.sync([localStorage.getItem('userId')]);
        // }
        this.database.getChangeListener().subscribe(() => {
          // console.log(data);
        });
      });

    this.router.events.subscribe(e => {
      if (e instanceof NavigationEnd) {

        // this.desactiveAllMenu();
        // if (e.url === '/admin/pos' || e.url === 'admin/pos') {
        //   this.updateActiveMenu('admin/pos');
        // } else if (e.url === '/admin/inventory' || e.url === 'admin/inventory') {
        //   this.updateActiveMenu('admin/inventory');
        // } else if (e.url === '/admin/settings' || e.url === 'admin/settings') {
        //   this.updateActiveMenu('admin/settings');
        // } else if (e.url === '/admin/analytics' || e.url === 'admin/analytics') {
        //   this.updateActiveMenu('admin/analytics');
        // } else if (e.url === '/admin/transactions' || e.url === 'admin/transactions') {
        //   this.updateActiveMenu('admin/transactions');
        // } else {
        //   this.updateActiveMenu('admin/analytics');

        // }

      }
    });
  }
  ngOnInit(): void {
    // this.msgService.getPermission();
    // this.msgService.receiveMessage();
    // this.message = this.msgService.currentMessage;

  }

  updateActiveMenu() {
    let activemenu = null;
    // activemenu = this.model.loadAll<Menu>(Tables.menu).find(m => m.route === route);
    // activemenu.active = true;
    // this.model.update<Menu>(Tables.menu, activemenu, activemenu.id);
  }

  desactiveAllMenu() {
    // this.model.loadAll<Menu>(Tables.menu).forEach(menu => {
    //   menu.active = false;
    //   this.model.update<Menu>(Tables.menu, menu, menu.id);
    // });
  }
}
