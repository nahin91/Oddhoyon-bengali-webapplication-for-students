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
    
    public partial class tbl_Chapter
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tbl_Chapter()
        {
            this.tbl_SubChapExam = new HashSet<tbl_SubChapExam>();
        }
    
        public int ChapterID { get; set; }
        public int BookID { get; set; }
        public string ChapterTitle { get; set; }
    
        public virtual tbl_TextBook tbl_TextBook { get; set; }
        public virtual tbl_ChapterDetails tbl_ChapterDetails { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_SubChapExam> tbl_SubChapExam { get; set; }
    }
}
