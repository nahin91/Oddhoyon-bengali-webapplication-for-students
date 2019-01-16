using BOL;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class CCDb
    {
        private Oddhoyon_AdminPanelEntities db;

        public CCDb()
        {
            db = new Oddhoyon_AdminPanelEntities();
        }

        public IEnumerable<tbl_ChapterContent> GetALL()
        {
            return db.tbl_ChapterContent.ToList();
        }
        public tbl_ChapterContent GetByID(int Id)
        {
            return db.tbl_ChapterContent.Find(Id);
        }
        public void Insert(tbl_ChapterContent content)
        {
            db.tbl_ChapterContent.Add(content);
            Save();
        }
        public void Delete(int Id)
        {
            tbl_ChapterContent content = db.tbl_ChapterContent.Find(Id);
            db.tbl_ChapterContent.Remove(content);
        }
        public void Update(tbl_ChapterContent content)
        {
            db.Entry(content).State = EntityState.Modified;
        }
        public void Save()
        {
            db.SaveChanges();
        }
    }
}
