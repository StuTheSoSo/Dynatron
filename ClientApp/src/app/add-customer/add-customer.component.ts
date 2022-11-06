import { HttpClient } from '@angular/common/http';
import { Component, Inject } from '@angular/core';

import { Customer } from '../models/customer';

@Component({
  selector: 'add-customer',
  templateUrl: './add-customer.component.html',
})
export class AddCustomerComponent {
  httpClient: HttpClient;
  customerUrl: string = '';
  public customer: Customer = { id: 0, firstName: '', lastName: '', emailAddress: '' }

  constructor(http: HttpClient, @Inject('BASE_URL') baseUrl: string) {
    this.httpClient = http;
    this.customerUrl = baseUrl + 'customer';
  }

  public addCustomer(): void {



    //if(this.addStringName.length > 0){
    //var body = { 'name': this.addStringName, 'description': this.addStringDescription };
    this.httpClient.post<Customer>(this.customerUrl, this.customer)
      .subscribe(result => {
        this.customer.emailAddress='';
        this.customer.firstName = '';
        this.customer.lastName = '';
      })
    // } else {
    //   alert('Character name is mandatory');
    // }



  }
}

