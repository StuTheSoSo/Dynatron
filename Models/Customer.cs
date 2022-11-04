
namespace Dynatron.Models
{
    public class Customer 
    {
        public int Id{get;set;}
        public string FirstName{get;set;} = "";
        public string LastName {get;set;} = "";
        public string EmailAddress {get;set;}="";
        public DateTime CreatedDate{get;set;} = DateTime.UtcNow;
        public DateTime LastUpdatedDate{get;set;} = DateTime.UtcNow;
    }
}