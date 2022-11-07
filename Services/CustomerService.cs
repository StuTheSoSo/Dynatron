using Dynatron.Services.Interfaces;
using Dynatron.Models;
using Dynatron.Repositories.Interfaces;


namespace Dynatron.Services
{
    public class CustomerService : ICustomerService
    {

        /*
            SERVICE RESPONSIBLE FOR BUSINESS LOGIC. NOT MUCH DEINFED IN REQUIREMENTS,
            BUT ANY BUSINESS CALCULATIONS, CALLS TO THIRD PARTY DATA PROVIDERS, OR OTHER
            BUSINESS OR LOGIC RELATED OPERATIONS BELONG IN THE SERVICE LAYER.
        */
        private readonly ICustomerRepository _customerRepository;

        // Constructor
        public CustomerService(ICustomerRepository customerRepository)
        {
            _customerRepository = customerRepository;
        }

        public List<Customer> GetCustomers()
        {
            try
            {
                return _customerRepository.GetCustomers().OrderBy(c => c.Id).ToList();
            }
            catch (Exception ex)
            {
                // Implement logging here
                throw new Exception("Error: CustomerService.GetCustomers()", ex);
            }
        }

        public List<Customer> AddCustomer(Customer customer)
        {
            try
            {
            return _customerRepository.AddCustomer(customer);
            }
            catch(Exception ex)
            {
                // Implement logging here
                throw new Exception("Error: CustomerService.AddCustomer()", ex);
            }
        }

        public Customer UpdateCustomer(Customer customer)
        {
            try
            {
            return _customerRepository.UpdateCustomer(customer);
            }
            catch(Exception ex)
            {
                // Implement logging here
                throw new Exception("Error: CustomerService.UpdateCustomer()", ex);
            }
        }

        public bool Exists(Customer customer)
        {
            try
            {
            return _customerRepository.Exists(customer);
            }
            catch(Exception ex)
            {
                // Implement logging here
                throw new Exception("Error: CustomerService.Exists()", ex);
            }
        }
    }
}