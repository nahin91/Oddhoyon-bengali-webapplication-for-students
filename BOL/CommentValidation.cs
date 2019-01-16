using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BOL
{
    public class CommentValidation
    {
        public System.DateTime Created { get; set; }
        public CommentValidation()
        {
            Created = DateTime.Now;
        }
    }

    [MetadataType(typeof(CommentValidation))]
    public partial class Comment
    {

    }
}
