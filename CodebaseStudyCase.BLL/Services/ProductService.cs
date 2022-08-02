using CodebaseStudyCase.Business.Abstractions;
using CodebaseStudyCase.Data;
using CodebaseStudyCase.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CodebaseStudyCase.Business.Services
{

    public class ProductService : IProductService
    {
        private readonly ProjectDbContext _context;

        public ProductService(ProjectDbContext context)
        {
            _context = context;
        }

        public List<Product> ListAllProducts()
        {
            return _context.Products.ToList();
        }

        public void AddNewProduct(Product product)
        {
            _context.Products.Add(product);
            _context.SaveChanges();
        }

        public void UpdateProduct(Product product)
        {
            _context.Entry(product).State = EntityState.Modified;
            _context.SaveChanges();
        }

        public void DeleteProduct(Product product)
        {
            _context.Products.Remove(product);
            _context.SaveChanges();
        }

        public void SellProductToCustomer(Product product, Customer customer)
        {
            product.QuantityNumber -= customer.QuantityNumber;
            customer.ProductName = product.Name;
            customer.ProductSellTime = DateTime.Now;
            _context.Customers.Add(customer);
            _context.Entry(product).State = EntityState.Modified;
            _context.SaveChanges();
        }

    }
}
