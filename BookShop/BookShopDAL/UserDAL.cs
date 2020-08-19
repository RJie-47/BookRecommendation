using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BookShopDAL
{
    public class UserDAL
    {
        BookShopLinqDataContext db = new BookShopLinqDataContext();

        public bool InsertUser(UserInfo infos)
        {
            //写入数据，不用一个一个给，用实体类实现
            //给了之后之间放入数据库
            bool result = true;
            try
            {
                db.UserInfo.InsertOnSubmit(infos);
                //提交
                db.SubmitChanges();
            }
            catch
            {
                return false;
            }
            return result;
        }

        //public bool DeleteUser(string UserEmail)
        //{
        //    return false;
        //}
        // public void UpdataUser(string UserEmail)
        //{

        //}
        public UserInfo GetUserInfoByEmail(string Email)
        {
            //var data = db.UserInfo.Select(m => m.UserEmail == Email).ToList<UserInfo>();
            UserInfo info = db.UserInfo.Where(m => m.UserEmail == Email).SingleOrDefault<UserInfo>();
            return info;
        }
    }
}
