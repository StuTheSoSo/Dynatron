using Dynatron.Repositories.Interfaces;
using Dynatron.Models;
using Dynatron.Context;

namespace Dynatron.Repositories
{
    public class CustomerRepository : ICustomerRepository
    {
        private readonly DynatronContext _context;

        // Constructor
        public CustomerRepository(DynatronContext context)
        {
            _context = context;
        }

        public List<Customer> GetCustomers()
        {
            return _context.Customers.ToList();
        }

        public List<Customer> AddCustomer(Customer customer)
        {
            customer.CreatedDate = DateTime.UtcNow;
            customer.LastUpdatedDate = DateTime.UtcNow;
            _context.Customers.Add(customer);
            _context.SaveChanges();
            return this.GetCustomers();
        }

        public Customer UpdateCustomer(Customer customer)
        {
            var foundCustomer = _context.Customers.FirstOrDefault(c => c.Id == customer.Id);
            if(foundCustomer != null)
            {
                foundCustomer.FirstName = customer.FirstName;
                foundCustomer.LastName = customer.LastName;
                foundCustomer.EmailAddress = customer.EmailAddress;
                foundCustomer.LastUpdatedDate = DateTime.UtcNow;
                _context.SaveChanges();
                return foundCustomer;
            }
            return null;
        }
    }
}