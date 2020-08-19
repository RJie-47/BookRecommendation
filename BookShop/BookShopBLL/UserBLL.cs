using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BookShopBLL
{
    public class UserBLL
    {
        BookShopDAL.UserDAL udal = new BookShopDAL.UserDAL();
        BookShopDAL.BookShopLinqDataContext db = new BookShopDAL.BookShopLinqDataContext();

        /// <summary>
        /// 用户注册
        /// 拿到注册信息后打包插入
        /// </summary>
        /// <param name="info">用户注册信息</param>
        /// <returns>成功与否</returns>
        public string RegisterUser(BookShopDAL.UserInfo info)
        {
            //验证用户数据的合法性
                                                                                    
            //验证用户名是否被占用

            if(udal.GetUserInfoByEmail(info.UserEmail)!=null)
            {
                return "用户名被占用";
            }
            //密码实现MD5加密
            info.UserPass = DpTool.MD5Encrypt(info.UserPass);

            if(udal.InsertUser(info))
            {
                return "用户注册成功";
            }
            return "用户注册失败";
            //udal.InsertUser(info);
            //都完成了就把数据放入
            
        }




        public bool UserLogin(string Email,string Password)
        {
            //根据用户名取出数据库信息
            BookShopDAL.UserInfo res = udal.GetUserInfoByEmail(Email);
            //把用户输入的密码做MD5加密
            Password = DpTool.MD5Encrypt(Password);
            //把两个加密后的密码作比较
            if(Password==res.UserPass)
            {
                return true;
            }
            return false;
        }

        public void ChangePsd()
        {

            //oldinfo.UserPass=newinfo.UserPass;

        }
        
    }
}
