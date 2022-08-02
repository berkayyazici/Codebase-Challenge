using CodebaseStudyCase.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CodebaseStudyCase.Business.Abstractions
{
    public interface ICustomerService
    {
        List<Customer> ListAllCustomers();
        IQueryable<Customer> Report(DateTimeRange first, DateTimeRange second);
    }
}
