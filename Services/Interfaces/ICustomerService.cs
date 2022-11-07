using Dynatron.Models;

namespace Dynatron.Services.Interfaces
{
    public interface ICustomerService
    {
        List<Customer> GetCustomers();

        List<Customer> AddCustomer(Customer customer);

        Customer UpdateCustomer(Customer customer);

        bool Exists(Customer customer);

    }
}