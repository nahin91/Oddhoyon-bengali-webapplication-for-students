using BOL;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class PostDb
    {
        private Oddhoyon_AdminPanelEntities db;

        public PostDb()
        {
            db = new Oddhoyon_AdminPanelEntities();
        }

        public IEnumerable<Post> GetALL()
        {
            return db.Posts.ToList();
        }
        public Post GetByID(int Id)
        {
            return db.Posts.Find(Id);
        }
        public void Insert(Post user)
        {
            db.Posts.Add(user);
            Save();
        }
        public void Delete(int Id)
        {
            Post user = db.Posts.Find(Id);
            db.Posts.Remove(user);
        }
        public void Update(Post user)
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
