import { Injectable, Injector } from "@angular/core";
import { finalize } from "rxjs/operators";
import { HttpClient } from "@angular/common/http";
import { CurrentUser } from "../common/auth/current-user";
import { Settings } from "../common/core/config/settings.service";
import { ApiPosService } from "./api/api.service";
import { PosModelService } from "./pos-model.service";
import { AppConfig } from "../../environments/environment";
import { API_ROUTES } from "./api/api-routes.enum";
import { OrderModelService } from '../orders/order-model.service';
import { Orders } from '../orders/orders';
import { OrderItemsModelService } from './cart/order-item-model.service';
import { NgxService } from '../common/ngx-db/ngx-service';

export function init_app(bootstrapper: BootstrapperPos) {
  return () => bootstrapper.bootstrap();
}

@Injectable()
export class BootstrapperPos {
  protected http: HttpClient;
  protected settings: Settings;
  protected user: CurrentUser;
  protected apiPos: ApiPosService;
  protected posModelService: PosModelService;
  protected orderModelService: OrderModelService;
  protected orderItemModelService: OrderItemsModelService
  constructor(protected injector: Injector, private db: NgxService) {
    this.http = this.injector.get(HttpClient);

    this.apiPos = this.injector.get(ApiPosService);

    this.posModelService = this.injector.get(PosModelService);
    this.orderModelService = this.injector.get(OrderModelService);
    this.orderItemModelService = this.injector.get(OrderItemsModelService);
    this.settings = this.injector.get(Settings);
    this.user = this.injector.get(CurrentUser);
  }
  /**
   * Bootstrap application with data returned from server.
   */
  public bootstrap() {
    //this.user.userChanged.subscribe(res => {
      if (localStorage.getItem('active_branch')) {
        this.orders();
      }
    //});
  }

  /**
   * Handle specified bootstrap data.
   */
  protected orders(): Promise<Orders[]> {
    let url;
    if (this.settings.getBaseUrl() != "http://localhost:4200/") {
      url = AppConfig.url + "secure/" + API_ROUTES.USERORDER;
    } else {
      url = this.settings.getBaseUrl() + "secure/" + API_ROUTES.USERORDER;
    }
    this.posModelService.update({ loading: true });
    return new Promise((resolve, reject) => {
      this.http
        .get(url)
        .pipe(finalize(() => this.posModelService.update({ loading: false })))
        .subscribe(
          res => {
            if (res['status'] == 'success') {
              const order: Orders = res['orders'].length > 0 ? res['orders'].filter(order => order.is_currently_processing === '1')[0] : null;

              this.posModelService.update({ loading: false, currently_ordered: order ? order : null, choosen_insurance: null, choose_customer: null, panel_content: 'home' });

              this.orderModelService.update({ orders: res["orders"].length > 0 ? res['orders'] : [] });
              if (order) {
                if (order.customer) {
                  this.db.addItem(order.customer);
                }
                this.orderItemModelService.update(order['order_items'], 'all');
              }
            }

            resolve();
          },
          error => {
            this.orderModelService.update([]);
            // reject();
          }
        );
    });
  }
}
