using Microsoft.AspNetCore.Mvc;

using Dynatron.Models;
using Dynatron.Services.Interfaces;

namespace Dynatron.Controllers;

[ApiController]
[Route("[controller]")]
public class CustomerController : ControllerBase
{
    private readonly ICustomerService _customerService;
    // Constructor
    public CustomerController(ICustomerService customerService)
    {
        _customerService = customerService;
    }


    [HttpGet]    
    public IActionResult Get()
    {
        return Ok(_customerService.GetCustomers());
    }

    [HttpPost]
    [HttpOptions]
    public IActionResult Post([FromBody]Customer customer)
    {
        return Ok(_customerService.AddCustomer(customer));
    }
}