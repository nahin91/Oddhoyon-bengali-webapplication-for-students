using BOL;
using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class UsersBs
    {
        private UsersDb objDb;

        public UsersBs()
        {
            objDb = new UsersDb();
        }

        public IEnumerable<tbl_Users> GetALL()
        {
            return objDb.GetALL();
        }

        public tbl_Users GetByID(int Id)
        {
            return objDb.GetByID(Id);
        }

        public void Insert(tbl_Users user)
        {
            objDb.Insert(user);
        }

        public void Delete(int Id)
        {
            objDb.Delete(Id);
        }

        public void Update(tbl_Users url)
        {
            objDb.Update(url);
        }
    }
}