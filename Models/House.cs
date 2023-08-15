using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace graigsList.Models
{
    public class House
    {
        public int Id { get; set; }
        public string name { get; set; }
        public string color { get; set; }
        public int? Year { get; set; }
        public double? Price { get; set; }
        public bool? Haunted { get; set; }
        public DateTime CreatedAt { get; set; }
        public DateTime UpdatedAt { get; set; }
    }
}