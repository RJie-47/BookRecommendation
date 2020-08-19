using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BookShopDAL
{
    public class BookDAL

    {
        BookShopLinqDataContext db = new BookShopLinqDataContext();


        public List<BookInfo> SelectNewBooks(int count)
        {
            return db.BookInfo.OrderByDescending(m => m.BookPublishDate).Take(count).ToList<BookInfo>();
        }

        public BookInfo SelectBookID(string BookID)
        {
            return db.BookInfo.Where(m => m.BookID == BookID).SingleOrDefault();
        }
    }


    
}
