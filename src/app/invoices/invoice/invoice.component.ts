import { Component, OnInit, ViewChild, OnDestroy, ViewEncapsulation } from '@angular/core';
import { MatSort } from '@angular/material';
import {finalize } from 'rxjs/operators';
import { PaginatedDataTableSource } from '../../data-table/data/paginated-data-table-source';
import { SharedModelService } from '../../shared-model/shared-model-service';
import { UrlAwarePaginator } from '../../common/pagination/url-aware-paginator.service';
import { Modal } from '../../common/core/ui/dialogs/modal.service';
import { ConfirmModalComponent } from '../../common/core/ui/confirm-modal/confirm-modal.component';
import { BehaviorSubject } from 'rxjs';
import { Invoice } from '../invoice';
import { InvoiceService } from '../invoice.service';

@Component({
  selector: 'app-invoice',
  templateUrl: './invoice.component.html',
  styleUrls: ['./invoice.component.scss'],
  providers: [UrlAwarePaginator],
  encapsulation: ViewEncapsulation.None,
})
export class InvoiceComponent implements OnInit, OnDestroy{
  @ViewChild(MatSort) matSort: MatSort;

  public dataSource: PaginatedDataTableSource<Invoice>;
  public loading = new BehaviorSubject(false);
  constructor(public shared:SharedModelService, public paginator: UrlAwarePaginator,private modal: Modal,private api:InvoiceService) { }

      ngOnInit() {
        this.dataSource = new PaginatedDataTableSource<Invoice>({
          uri: 'invoices/'+parseInt(localStorage.getItem('active_branch')),
          dataPaginator: this.paginator,
          matSort: this.matSort
      });
    }

    ngOnDestroy() {
      this.paginator.destroy();
    }


/**
     * Delete currently selected users.
     */
    public deleteSelectedInvoices() {
      const ids = this.dataSource.selectedRows.selected.map(invoice => invoice.id);
      this.loading.next(true);
      this.api.deleteMultiple(ids).pipe(finalize(() => this.loading.next(false))).subscribe(() => {
          this.paginator.refresh();
          this.dataSource.selectedRows.clear();
      });
  }
 /**
     * Ask user to confirm deletion of selected tags
     * and delete selected tags if user confirms.
     */
    public maybeDeleteSelectedInvoices() {
      this.modal.show(ConfirmModalComponent, {
          title: 'Delete Invoices',
          body:  'Are you sure you want to delete selected invoices?',
          ok:    'Delete'
      }).afterClosed().subscribe(confirmed => {
          if ( ! confirmed) return;
          this.deleteSelectedInvoices();
      });
  }

    /**
     * Show modal for editing user if user is specified
     * or for creating a new user otherwise.
     */
    public showCrupdateInvoiceModal(invoice?: Invoice) {
      // this.shared.update(invoice);
      // this.modal.open(
      //   CrupdateInvoiceModalComponent,
      //     {invoice},
      //     'crupdate-Invoice-modal-container'
      // ).beforeClose().subscribe(data => {
      //   this.shared.remove();
      //     if ( ! data) return;
      //     this.paginator.refresh();
      // });
  }


}
