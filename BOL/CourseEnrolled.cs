//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BOL
{
    using System;
    using System.Collections.Generic;
    
    public partial class CourseEnrolled
    {
        public int CourseEnrolledID { get; set; }
        public int UserId { get; set; }
        public int CourseId { get; set; }
    
        public virtual CourseTest CourseTest { get; set; }
        public virtual tbl_Users tbl_Users { get; set; }
    }
}
