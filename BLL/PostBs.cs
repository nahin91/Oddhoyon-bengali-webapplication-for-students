using BOL;
using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class PostBs
    {
        private PostDb objDb;

        public PostBs()
        {
            objDb = new PostDb();
        }

        public IEnumerable<Post> GetALL()
        {
            return objDb.GetALL();
        }

        public Post GetByID(int Id)
        {
            return objDb.GetByID(Id);
        }

        public void Insert(Post user)
        {
            objDb.Insert(user);
        }

        public void Delete(int Id)
        {
            objDb.Delete(Id);
        }

        public void Update(Post url)
        {
            objDb.Update(url);
        }
    }
}
