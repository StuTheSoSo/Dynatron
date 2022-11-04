import { Component, Inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { Customer } from '../models/customer';

@Component({
  selector: 'customer-grid',
  templateUrl: './customer-grid.component.html',
})
export class CustomerGridComponent {
  public customers: Customer[] = [];

  constructor(http: HttpClient, @Inject('BASE_URL') baseUrl: string) {
    http.get<Customer[]>(baseUrl + 'customer').subscribe(result => {
      this.customers = result;
    }, error => console.error(error));
  }

}

