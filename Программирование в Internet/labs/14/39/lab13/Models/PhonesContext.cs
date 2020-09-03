using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace lab13.Models
{
    public class PhonesContext : DbContext
    {
        public DbSet<Phone> Phones { get; set; }
    }
}