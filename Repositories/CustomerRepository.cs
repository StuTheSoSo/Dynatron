using Dynatron.Repositories.Interfaces;
using Dynatron.Models;

namespace Dynatron.Repositories
{
    public class CustomerRepository : ICustomerRepository
    {
        
    // THIS LIST IS FOR DEV ONLY - MUST BE REPLACED BY DATABASE OBJECTS
    public List<Customer> tempList = new List<Customer>{
        new Customer{ Id = 1, FirstName="Repo_Fred", LastName = "1", EmailAddress="1@1.com"},
        new Customer{ Id = 2, FirstName="Ed", LastName = "2", EmailAddress="2@2.com"},
        new Customer{ Id = 3, FirstName="Ted", LastName="3", EmailAddress="3@3.com"},
        new Customer{ Id = 4, FirstName = "Zed", LastName="4", EmailAddress = "4@4.com"}
    };

        public List<Customer> GetCustomers()
        {
            return tempList;
        }
    }
}