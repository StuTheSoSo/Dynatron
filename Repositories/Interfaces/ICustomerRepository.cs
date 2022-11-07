using Dynatron.Models;

namespace Dynatron.Repositories.Interfaces
{
    public interface ICustomerRepository
    {
        List<Customer> GetCustomers();

        List<Customer> AddCustomer(Customer customer);

        Customer UpdateCustomer(Customer customer);
    }
}