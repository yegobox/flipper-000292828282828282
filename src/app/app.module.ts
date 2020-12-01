import 'reflect-metadata';
import '../polyfills';

import { NgModule } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { CoreModule } from './core/core.module';
import { SharedModule } from './shared/shared.module';

import { AppRoutingModule } from './app-routing.module';

// NG Translate
import { TranslateModule, TranslateLoader } from '@ngx-translate/core';
import { TranslateHttpLoader } from '@ngx-translate/http-loader';

import { AppComponent } from './app.component';
import { LoginComponent } from './login/login.component';
import { MigrationModule } from './migration/migration.module';
import { PouchDBService, CurrentBusinessEvent } from '@enexus/flipper-components';
import { SubscriptionComponent } from './subscription/subscription.component';
import { CardValidationComponent } from './subscription/validate-card/validate-card.component';
import { environment } from '../environments/environment';

import { AngularFireModule } from '@angular/fire';
import { AngularFireDatabaseModule } from '@angular/fire/database';
import { AngularFirestoreModule, AngularFirestore } from '@angular/fire/firestore';
import { PaidSuccessComponent } from './subscription/paid-success/paid-success.component';
import { FlipperEventBusService } from '@enexus/flipper-event';
import { SafePipe } from './safe.pipe';
import { AnQrcodeModule } from 'an-qrcode';
// AoT requires an exported function for factories
export function HttpLoaderFactory(http: HttpClient): TranslateHttpLoader {
  return new TranslateHttpLoader(http, './assets/i18n/', '.json');
}

@NgModule({
  declarations: [AppComponent, LoginComponent, SubscriptionComponent, CardValidationComponent,
     PaidSuccessComponent,SafePipe],
  imports: [
    CoreModule,
    SharedModule,
    AppRoutingModule,
    AnQrcodeModule,
    AngularFireModule.initializeApp(environment.config),
    AngularFirestoreModule,
    AngularFireDatabaseModule,
    MigrationModule.forRoot(),
    TranslateModule.forRoot({
      loader: {
        provide: TranslateLoader,
        useFactory: HttpLoaderFactory,
        deps: [HttpClient]
      }
    })
  ],
  providers: [PouchDBService],
  bootstrap: [AppComponent],
  entryComponents: [CardValidationComponent, PaidSuccessComponent]
})
export class AppModule {


  
  constructor() { }
}
