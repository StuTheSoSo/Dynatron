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
            var test = _context.Customers;
            return _context.Customers.ToList();
        }
    }
}