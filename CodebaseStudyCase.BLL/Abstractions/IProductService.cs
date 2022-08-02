using CodebaseStudyCase.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CodebaseStudyCase.Business.Abstractions
{
    public interface IProductService
    {
        List<Product> ListAllProducts();
        void AddNewProduct(Product product);
        void UpdateProduct(Product product);
        void DeleteProduct(Product product);
        void SellProductToCustomer(Product product, Customer customer);
    }
}
