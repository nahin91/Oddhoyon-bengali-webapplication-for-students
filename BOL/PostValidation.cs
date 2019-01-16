using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BOL
{
    public class PostValidation
    {
        [Required]
        public string Titile { get; set; }
        [Required]
        public string Summary { get; set; }
        [Required]
        [DataType(DataType.MultilineText)]
        public string Contents { get; set; }
        public System.DateTime Created { get; set; }
        public PostValidation()
        {
            Created = DateTime.Now;
        }
    }

    [MetadataType(typeof(PostValidation))]
    public partial class Post
    {
       
    }

    
}
