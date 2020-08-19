using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BookShopDAL;

namespace BookShopBLL
{
    public class ShoppingCart
    {
        Dictionary<string, shoppingcartItem> cart = new Dictionary<string, shoppingcartItem>();
        /// <summary>
        /// 添加书明细
        /// </summary>
        public void AddItem(string bookid)
        {
            //如果之前加过同一本书
            shoppingcartItem olditem = null;
            if(cart.TryGetValue(bookid,out olditem))
            {
                olditem.Quantity++;
                return;
            }
            //1，得到相应书的所有信息
            BookBLL bll = new BookBLL();
            BookInfo info = bll.GetBookInfoByID(bookid);
            //2，生成书明细对象，并把信息赋值
            shoppingcartItem item = new shoppingcartItem
            {
                BookID = info.BookID,
                BookName=info.BookName,
                BookImg =info.BookSmallImageName,
                MarketPrice =info.BookMarketPrice,
                Discount =info.BookDiscount,
                Quantity=1
            };
            //3，加到字典类里面
            //（先看之前有没有加过）
            cart.Add(bookid, item);

        }
        /// <summary>
        /// 删除明细
        /// </summary>
        /// <param name="bookid"></param>
        public void RemoveItem(string bookid)
        {
            cart.Remove(bookid);
        }
        /// <summary>
        /// 返回所有明细
        /// 字典包含两个值，键（关键字），值（内容）。通过键读值
        /// </summary>
        /// <returns></returns>
        public List<shoppingcartItem> GetAllItems()
        {
            return cart.Values.ToList<shoppingcartItem>();
        }
        public decimal GetSoldAmount()
        {
            return cart.Values.Sum(m=>m.SoldAmount);
        }

        public decimal AllDiscountAmount
        {
            get
            {
                return cart.Values.Sum(m => m.SoldAmount);
            }
        }


    }
}
