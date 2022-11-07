using Microsoft.AspNetCore.Mvc;

using Dynatron.Models;
using Dynatron.Services.Interfaces;

namespace Dynatron.Controllers;

[ApiController]
[Route("[controller]")]
public class CustomerController : ControllerBase
{

    /*
        CONTROLLER CLASS - RESPONSIBLE FOR LISTENING AND REPLYING TO HTTP CALL FROM CLIENTS.
        NO BUSINESS LOGIC. IF THERE WAS ANY AUTHENTICATION/AUTHORIZATION IT WOULD BE DONE HERE.
        ALL VALIDATION OF INCOMING OBJECTS WOULD BE HANDLED HERE.
    */

    private readonly ICustomerService _customerService;
    // Constructor
    public CustomerController(ICustomerService customerService)
    {
        _customerService = customerService;
    }


    [HttpGet]
    public IActionResult Get()
    {
        // Get all. If search was implemented it MIGHT be implmented here 
        // (or possibly the front end, or a combination of the two). Any
        // paging would also be implemented here, but requirements didn't dictate.
        return Ok(_customerService.GetCustomers());
    }

    [HttpPost]
    [HttpOptions]
    public IActionResult Post([FromBody] Customer customer)
    {
        try
        {
            // Make sure customer exists
            if (!_customerService.Exists(customer))
                return NotFound();
            // Update existing customer.
            if (ValidateCustomer(customer) == null)
                return Ok(_customerService.UpdateCustomer(customer));

            return BadRequest("Unknown Error");
        }
        catch (Exception ex)
        {
            // Implement logging here
            return BadRequest("Unknown Error");
        }
    }

    [HttpPut]
    public IActionResult Put(Customer customer)
    {
        try
        {
        // Add a new customer.
        if (ValidateCustomer(customer) == null)
            return Ok(_customerService.AddCustomer(customer));

        return BadRequest("Unknown Error");
        }
        catch (Exception ex)
        {
            // Implement logging here
            return BadRequest("Unknown Error");
        }
    }

    private IActionResult ValidateCustomer(Customer customer)
    {
        try
        {
        if (string.IsNullOrEmpty(customer.Id.ToString()))
            return BadRequest("Customer Id is required");
        if (string.IsNullOrEmpty(customer.FirstName))
            return BadRequest("Customer First Name is required");
        if (string.IsNullOrEmpty(customer.LastName))
            return BadRequest("Customer Last Name is required");
        if (string.IsNullOrEmpty(customer.EmailAddress))
            return BadRequest("Customer Email Address is required");
        return null;
        }
        catch (Exception ex)
        {
            // Implement logging here
            throw new Exception("Error: CustomerController.ValidateCustomer()", ex);
        }
    }
}