using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BOL
{
    public class MultipleViewModel
    {
        public tbl_Chapter MyChapter { get; set; }
        public tbl_TextBook MyBooks { get; set; }
        public tbl_UserAnsOfChap MyChapAns { get; set; }
        public tbl_ChapQuestion MyChapQst { get; set; }

    }
}