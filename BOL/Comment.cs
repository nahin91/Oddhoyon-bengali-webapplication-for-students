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
    
    public partial class Comment
    {
        public int CommentID { get; set; }
        public Nullable<int> PostID { get; set; }
        public System.DateTime Created { get; set; }
        public string Author { get; set; }
        public Nullable<int> UserID { get; set; }
        public string Contents { get; set; }
    
        public virtual Post Post { get; set; }
    }
}