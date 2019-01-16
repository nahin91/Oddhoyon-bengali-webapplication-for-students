using BOL;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class UsersDb
    {
        private Oddhoyon_AdminPanelEntities db;

        public UsersDb()
        {
            db = new Oddhoyon_AdminPanelEntities();
        }

        public IEnumerable<tbl_Users> GetALL()
        {
            return db.tbl_Users.ToList();
        }
        public tbl_Users GetByID(int Id)
        {
            return db.tbl_Users.Find(Id);
        }
        public void Insert(tbl_Users user)
        {
            db.tbl_Users.Add(user);
            Save();
        }
        public void Delete(int Id)
        {
            tbl_Users user = db.tbl_Users.Find(Id);
            db.tbl_Users.Remove(user);
        }
        public void Update(tbl_Users user)
        {
            db.Entry(user).State = EntityState.Modified;
            db.Configuration.ValidateOnSaveEnabled = false;
            Save();
            db.Configuration.ValidateOnSaveEnabled = true;
        }
        public void Save()
        {
            db.SaveChanges();
        }
    }
}
