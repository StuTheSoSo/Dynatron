using Dynatron.Repositories.Interfaces;
using Dynatron.Models;
using Dynatron.Context;

namespace Dynatron.Repositories
{
    public class CustomerRepository : ICustomerRepository
    {

        /*
            REPOSITORY RESPONSIBLE FOR ALL DATA-RELATED (CRUD) OPERATIONS.
            THIS REPOSITORY IS USING THE DB CONTEXT AND ENTITY FRAMEWORK/LINQ,
            BUT IF PERFORMANCE BECOMES AN ISSUE, OR IF THE DATA WAS LARGER
            STORED PROCEDURES SHOULD PROBABLY BE USED INCONJUNCTION WITH AN ORM (Entity Framework, NHibernate, etc).
        */
        private readonly DynatronContext _context;

        // Constructor
        public CustomerRepository(DynatronContext context)
        {
            _context = context;
        }

        public List<Customer> GetCustomers()
        {
            try
            {
            return _context.Customers.ToList();
            }
            catch(Exception ex)
            {
                // Implement logging here
                throw new Exception("Error: CustomerRepository.GetCustomers()", ex);
            }
        }

        public List<Customer> AddCustomer(Customer customer)
        {
            try
            {
            customer.CreatedDate = DateTime.UtcNow;
            customer.LastUpdatedDate = DateTime.UtcNow;
            _context.Customers.Add(customer);
            _context.SaveChanges();
            return this.GetCustomers();
            }
            catch(Exception ex)
            {
                // Implement logging here
                throw new Exception("Error: CustomerRepository.AddCustomer()", ex);
            }
        }

        public Customer UpdateCustomer(Customer customer)
        {
            try
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
            return new Customer();;
            }
            catch(Exception ex)
            {
                // Implement logging here
                throw new Exception("Error: CustomerRepository.UpdateCustomer()", ex);
            }
        }

        public bool Exists(Customer customer)
        {
            try
            {
            return _context.Customers.Any(c => c.Id == customer.Id);
            }
            catch(Exception ex)
            {
                // Implement logging here
                throw new Exception("Error: CustomerRepository.Exists()", ex);
            }
        }
    }
}