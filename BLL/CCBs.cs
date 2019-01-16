using BOL;
using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class CCBs
    {
        private CCDb objDb;

        public CCBs()
        {
            objDb = new CCDb();
        }

        public IEnumerable<tbl_ChapterContent> GetALL()
        {
            return objDb.GetALL();
        }

        public tbl_ChapterContent GetByID(int Id)
        {
            return objDb.GetByID(Id);
        }

        public void Insert(tbl_ChapterContent content)
        {
            objDb.Insert(content);
        }

        public void Delete(int content)
        {
            objDb.Delete(content);
        }

        public void Update(tbl_ChapterContent content)
        {
            objDb.Update(content);
        }
    }
}
