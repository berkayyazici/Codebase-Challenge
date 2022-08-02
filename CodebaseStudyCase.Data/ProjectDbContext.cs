using CodebaseStudyCase.Models;
using Microsoft.EntityFrameworkCore;

namespace CodebaseStudyCase.Data
{
    public class ProjectDbContext : DbContext
    {
        public ProjectDbContext(DbContextOptions<ProjectDbContext> options) : base(options)
        {
        }

        public DbSet<Product> Products { get; set; }
        public DbSet<Customer> Customers { get; set; }
    }
}
