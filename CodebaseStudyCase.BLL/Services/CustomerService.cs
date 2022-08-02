using CodebaseStudyCase.Business.Abstractions;
using CodebaseStudyCase.Data;
using CodebaseStudyCase.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CodebaseStudyCase.Business.Services
{

    public class CustomerService : ICustomerService
    {
        private readonly ProjectDbContext _context;

        public CustomerService(ProjectDbContext context)
        {
            _context = context;
        }

        public List<Customer> ListAllCustomers()
        {
            return _context.Customers.ToList();
        }

        public IQueryable<Customer> Report(DateTimeRange first, DateTimeRange second)
        {
            var startTime = first.StartTime;             // setting start time by using Time.StartTime variable
            TimeSpan tstartTime = new(0, 0, 0);          // setting timer to 00:00:00 
            startTime = startTime.Date + tstartTime;

            var endTime = second.EndTime;                // setting start time by using Time.EndTime variable
            TimeSpan tendTime = new(23, 59, 59);         // setting timer to 23:59:59 to see the products sold within the desired dates
            endTime = endTime.Date + tendTime;

            var item = from customer in _context.Customers              // Checking products selling time and get datas
                       where startTime <= customer.ProductSellTime
                       where customer.ProductSellTime <= endTime
                       select new Customer
                       {
                           Id = customer.Id,
                           Name = customer.Name,
                           QuantityNumber = customer.QuantityNumber,
                           ProductName = customer.ProductName,
                           ProductSellTime = customer.ProductSellTime
                       };

            //_context.Customers.Where(customer => customer.ProductSellTime >= startTime
            //&& customer.ProductSellTime <= endTime);

            return item;
        }
    }
}
