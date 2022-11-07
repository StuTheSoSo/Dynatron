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
  public customer: Customer = { id: 0, firstName: '', lastName: '', emailAddress: '' };
  public validation: any = { firstName: null };

  constructor(http: HttpClient, @Inject('BASE_URL') baseUrl: string) {
    this._httpClient = http;
    this._baseUrl = baseUrl;
    this.getCustomers();
  }

  public addCustomer(): void {
    if (this.validate(this.customer)) {
      this._httpClient.put<Customer>(this._baseUrl + 'customer', this.customer)
        .subscribe(result => {
          this.customer.emailAddress = '';
          this.customer.firstName = '';
          this.customer.lastName = '';
          this.getCustomers();
        });
    }
  }

  private getCustomers(): void {
    // Get all customers. Filtering was not specified in requirements doc so get 'em all
    this._httpClient.get<Customer[]>(this._baseUrl + 'customer').subscribe(result => {
      this.customers = result;
    }, error => console.error(error));
  }

  public toggleEdit(customer: Customer) {
    // Capture existing customer info in case of cancel.
    // Requirements specify using session storage
    let existing = sessionStorage.getItem('editingCustomers');
    sessionStorage.setItem("dynatron_" + customer.id, JSON.stringify(customer));
  }

  public cancel(customer: Customer) {
    // Cancel editing
    const foundstring = sessionStorage.getItem("dynatron_" + customer.id);
    if (foundstring && foundstring.length > 0) {
      var foundItem = JSON.parse(foundstring);
      // reset all values for this customer
      var editedCustomer = this.customers.find(i => i.id === customer.id);
      if (editedCustomer) {
        editedCustomer.firstName = foundItem.firstName;
        editedCustomer.lastName = foundItem.lastName;
        editedCustomer.emailAddress = foundItem.emailAddress;

      }
      // Remove this from the editing customers
      sessionStorage.removeItem("dynatron_" + customer.id);
    }
  }

  public save(customer: Customer): void {
    // Save edits to selected user
    if(this.validate(customer)){
    this._httpClient.post<Customer>(this._baseUrl + 'customer', customer)
      .subscribe(result => {
        this.cancel(customer);
        this.getCustomers();
      });
    }
  }

  public isEditing(customer: Customer): boolean {
    // determine if this user is being edited
    const foundstring = sessionStorage.getItem("dynatron_" + customer.id);
      return (foundstring !== null && foundstring.length > 0);
  }

  public validate(customer: Customer): boolean {
    // Cheesy function to validate input. Doing it manually as opposed to using form validation (or a form!)
    this.validation.firstName = false;
    this.validation.lastName = false;
    this.validation.emailAddress = false;
    // validate
    if (customer.firstName.length === 0) {
      this.validation.firstName = true;
    }
    if (customer.lastName.length === 0) {
      this.validation.lastName = true;
    }
    if (customer.emailAddress.length === 0) {
      this.validation.emailAddress = true;
    }

    if(this.validation.firstName || this.validation.lastName || this.validation.emailAddress){
      return false;
    }
    return true;
  }
}

