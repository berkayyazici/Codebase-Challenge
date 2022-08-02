using Microsoft.AspNetCore.Mvc;
using CodebaseStudyCase.Models;
using CodebaseStudyCase.Data;
using System.Linq;
using System;
using System.Collections.Generic;
using System.Data;
using CodebaseStudyCase.Business.Abstractions;

namespace CodebaseStudyCase.Controllers
{
    public class CustomerController : Controller
    {
        private readonly ICustomerService _service;

        public CustomerController(ICustomerService service)
        {
            _service = service;
        }

        public IActionResult Index()
        {
            return View();
        }   
        
        // List all customers
        [HttpGet]
        public IActionResult ListAllCustomers() 
        {
            return View(_service.ListAllCustomers());
        }

        public IActionResult DirectionToReportPage()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Report(DateTimeRange first, DateTimeRange second)
        {
            return View(_service.Report(first, second));
        }    

    }
}
