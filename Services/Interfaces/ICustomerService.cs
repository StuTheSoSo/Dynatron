using Dynatron.Models;

namespace Dynatron.Services.Interfaces
{
    public interface ICustomerService
    {
        List<Customer> GetCustomers();

        Customer AddCustomer(Customer customer);

    }
}