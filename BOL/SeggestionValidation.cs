using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BOL
{
    public class UniqueSuggestionAttribute : ValidationAttribute
    {
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            Oddhoyon_AdminPanelEntities db = new Oddhoyon_AdminPanelEntities();
            string suggestionValue = value.ToString();
            int coun = db.tbl_PublicExamSuggestion.Where(x => x.SubjectName == suggestionValue).ToList().Count();
            if (coun != 0)
                return new ValidationResult("Subject Name Already Exist");
            return ValidationResult.Success;
        }
    }

    public class SeggestionValidation
    {
        [UniqueSuggestion]
        public string SubjectName { get; set; }
    }
}
