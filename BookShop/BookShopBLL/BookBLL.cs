using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BookShopDAL;

namespace BookShopBLL
{
    public class BookBLL
    {
        BookShopDAL.BookDAL bdal = new BookShopDAL.BookDAL();

        public List<BookInfo>GetNewBooks(int count)
        {
            //通知数据访问层传Count条数据给我
            return bdal.SelectNewBooks(count);
        }

        public BookInfo GetBookInfoByID(string BookID)
        {
            return bdal.SelectBookID(BookID);
        }
    }
}
