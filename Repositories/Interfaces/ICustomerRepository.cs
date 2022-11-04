using Dynatron.Models;

namespace Dynatron.Repositories.Interfaces
{
    public interface ICustomerRepository
    {
        List<Customer> GetCustomers();
    }
}