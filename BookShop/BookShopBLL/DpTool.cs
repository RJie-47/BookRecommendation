using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;

namespace BookShopBLL
{
   public static class DpTool
    {
        public static string MD5Encrypt(string password)
        {
            MD5 md5Hasher = new MD5CryptoServiceProvider();
            byte[] hashedDataBytes = md5Hasher.ComputeHash(Encoding.UTF8.GetBytes(password));
            StringBuilder tmp = new StringBuilder();
            foreach (byte i in hashedDataBytes)
            {
                tmp.Append(i.ToString("x2").ToUpper());
            }
            return tmp.ToString();
         }
    }
}
