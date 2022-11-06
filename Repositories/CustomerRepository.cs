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

        public Customer AddCustomer(Customer customer)
        {
            _context.Customers.Add(customer);
            _context.SaveChanges();
            var addedCustomer = _context.Customers.FirstOrDefault(c => c.FirstName.ToLower() == customer.FirstName.ToLower()
            && c.LastName.ToLower() == customer.LastName.ToLower() && c.EmailAddress.ToLower() == customer.EmailAddress.ToLower());

            return addedCustomer;
        }
    }
}