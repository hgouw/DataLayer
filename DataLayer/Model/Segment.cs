//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataLayer.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Segment
    {
        public Segment()
        {
            this.Products = new HashSet<Product>();
        }
    
        public int Id { get; set; }
        public string SegmentName { get; set; }
        public string Manager { get; set; }
        public string REPSupervisor { get; set; }
        public bool IsActive { get; set; }
    
        public virtual ICollection<Product> Products { get; set; }
    }
}
