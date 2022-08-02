using System.Collections.Generic;

namespace CodebaseStudyCase.Models
{
    public class ViewModel
    {
        public IEnumerable<Product> Product { get; set; }
        public Customer Customer { get; set; }
    }
}
