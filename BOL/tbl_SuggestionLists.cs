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
    
    public partial class tbl_SuggestionLists
    {
        public int SuggestionListID { get; set; }
        public Nullable<int> SuggestionID { get; set; }
        public string Sug1Title { get; set; }
        public string Sug1image { get; set; }
        public string Sug2Title { get; set; }
        public string Sug2image { get; set; }
        public string Sug3Title { get; set; }
        public string Sug3image { get; set; }
    
        public virtual tbl_PublicExamSuggestion tbl_PublicExamSuggestion { get; set; }
    }
}
