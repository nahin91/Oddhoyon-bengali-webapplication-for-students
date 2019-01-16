using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BOL
{
    public class UniqueEmailAttribute : ValidationAttribute
    {
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            //Oddhoyon_AdminPanelEntities db = new Oddhoyon_AdminPanelEntities();
            //string userEmailValue = value.ToString();
            //int coun = db.tbl_Users.Where(x => x.UserEmail == userEmailValue).ToList().Count();
            //if (coun != 0)
            //    return new ValidationResult("User Email Already Exist");
            return ValidationResult.Success;
        }
    }

    public class tblUserValidation
    {
        [Required]
        [EmailAddress]
        [UniqueEmail]
        public string UserEmail { get; set; }

        [Required]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        [Required]
        [Compare("Password")]
        public string ConfirmPassword { get; set; }
    }

    [MetadataType(typeof(tblUserValidation))]
    public partial class tbl_Users
    {
        public string ConfirmPassword { get; set; }
    }
}
