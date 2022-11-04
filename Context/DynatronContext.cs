using Microsoft.EntityFrameworkCore;
using Dynatron.Models;

namespace Dynatron.Context
{
    public class DynatronContext : DbContext
    {
        public DynatronContext(DbContextOptions options) : base(options)
        {

        }

        public DbSet<Customer> Customers {get;set;}
    }
}