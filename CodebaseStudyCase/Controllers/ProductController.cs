using System;
using System.Linq;
using System.Collections.Generic;
using System.Threading.Tasks;
using CodebaseStudyCase.Data;
using CodebaseStudyCase.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Dynamic;
using CodebaseStudyCase.Business.Abstractions;

namespace CodebaseStudyCase.Controllers
{
    public class ProductController : Controller
    {
        private readonly IProductService _service;

        public ProductController(IProductService service)
        {
            _service = service;
        }

        // Lists products
        [HttpGet]
        public IActionResult ListAllProducts()   
        {
            return View(_service.ListAllProducts());
        }

        // Views product add page
        public IActionResult AddNewProductPage()
        {
            return View();
        }    

        // Views product update page
        public IActionResult UpdateProductPage(int Id, string Name, int Price, int QuantityNumber)
        {
            return View();
        }
        // Using these parameters for showing them on textboxes
        public IActionResult SellProductPage(int Id, string Name, int Price, int QuantityNumber)
        {
            return View();
        }

        // Adds a product
        [HttpPost]
        public IActionResult AddNewProduct(Product product)
        {
            _service.AddNewProduct(product); 
            ViewBag.Message = "Product Inserted!";
            return View();
        }

        // Updates features of selected product
        [HttpPost]
        public IActionResult UpdateProduct(Product product)
        {
            _service.UpdateProduct(product);
            ViewBag.Message = "Product Updated!";
            return View();
        }

        // Deletes the selected product
        public IActionResult DeleteProduct(Product product)
        {
            _service.DeleteProduct(product);
            ViewBag.Message = "Product Deleted!";
            return View();
        }   

        public IActionResult SellProductToCustomer(Product product, Customer customer)
        {
            if (customer.QuantityNumber> product.QuantityNumber)   // If customer wants to buy more products than we already have
                                                              // error message pops up.
            {
                ViewBag.Message = "You cannot purchase more items than the current number of products.";
                return View();
            }

            else
            {
                _service.SellProductToCustomer(product, customer);
                ViewBag.Message = $"{customer.QuantityNumber} products were sold to {customer.Name}"; // Information message
                return View();
            }
        }
    }
}
