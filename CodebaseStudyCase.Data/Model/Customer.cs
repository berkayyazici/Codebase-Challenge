using System;
using System.ComponentModel.DataAnnotations;

namespace CodebaseStudyCase.Models
{
    public class Customer
    {
        [Key]
        public int Id { get; set; }
        public string Name { get; set; }
        public DateTime ProductSellTime { get; set; }
        public int QuantityNumber { get; set; }
        public string ProductName { get; set; }
    }
}
