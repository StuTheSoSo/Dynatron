using Dynatron.Services.Interfaces;
using Dynatron.Models;
using Dynatron.Repositories.Interfaces;


namespace Dynatron.Services
{    public class CustomerService : ICustomerService
    {
        private readonly ICustomerRepository _customerRepository;

        // Constructor
        public CustomerService(ICustomerRepository customerRepository)
        {
            _customerRepository = customerRepository;
        }

        public List<Customer> GetCustomers()
        {
            return _customerRepository.GetCustomers();;
        }
    }
}