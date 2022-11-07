import { Component, Inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { Customer } from '../models/customer';

@Component({
  selector: 'customer-grid',
  templateUrl: './customer-grid.component.html',
  styleUrls: ['./customer-grid.component.css']
})
export class CustomerGridComponent {
  public customers: Customer[] = [];
  private _httpClient: HttpClient;
  private _baseUrl: string = '';
  public customer: Customer = { id: 0, firstName: '', lastName: '', emailAddress: '' }
  private editingCustomers: Customer[] = [];

  constructor(http: HttpClient, @Inject('BASE_URL') baseUrl: string) {
    this._httpClient = http;
    this._baseUrl = baseUrl;
    this.getCustomers();
  }

  public addCustomer(): void {
    this._httpClient.put<Customer>(this._baseUrl + 'customer', this.customer)
      .subscribe(result => {
        this.customer.emailAddress = '';
        this.customer.firstName = '';
        this.customer.lastName = '';
        this.getCustomers();
      })
  }

  private getCustomers(): void {
    this._httpClient.get<Customer[]>(this._baseUrl + 'customer').subscribe(result => {
      this.customers = result;
    }, error => console.error(error));
  }

  public toggleEdit(customer: Customer) {
    this.editingCustomers.push( { ...customer });
  }

  public cancel(customer: Customer) {
    const foundItem = this.editingCustomers.find(i => i.id === customer.id);
    if (foundItem) {
      // reset all values for this customer
      var editedCustomer = this.customers.find(i => i.id === customer.id);
      if(editedCustomer){
        editedCustomer.firstName = foundItem.firstName;
        editedCustomer.lastName = foundItem.lastName;
        editedCustomer.emailAddress = foundItem.emailAddress;
        
      }
      // Remove this from the editing customers
      this.editingCustomers.splice(this.editingCustomers.indexOf(foundItem), 1);
    }
  }

  public save(customer: Customer):void{
    this._httpClient.post<Customer>(this._baseUrl + 'customer', customer)
    .subscribe(result => {
      this.cancel(customer);
      this.getCustomers();
    })
  }

  public isEditing(customer: Customer): boolean {
    const foundItem = this.editingCustomers.find(i => i.id === customer.id);
    if (foundItem) {
      return this.editingCustomers.indexOf(foundItem) > -1;
    }
    return false;
  }

}

