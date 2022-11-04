using Microsoft.AspNetCore.Mvc;

using Dynatron.Models;

namespace Dynatron.Controllers;

[ApiController]
[Route("[controller]")]
public class CustomerController : ControllerBase
{
    // THIS LIST IS FOR DEV ONLY - MUST BE REPLACED BY DATABASE OBJECTS
    public List<Customer> tempList = new List<Customer>{
        new Customer{ FirstName="Fred", LastName = "1", EmailAddress="1@1.com"},
        new Customer{ FirstName="Ed", LastName = "2", EmailAddress="2@2.com"},
        new Customer{ FirstName="Ted", LastName="3", EmailAddress="3@3.com"}
    };


    [HttpGet]
    public IActionResult Get()
    {
        return Ok(tempList);
    }
}