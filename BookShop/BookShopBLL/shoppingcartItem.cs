using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BookShopBLL
{
    public class shoppingcartItem
    {
     /// /// <summary>
     /// 创建个ID类
     /// ...
     /// 金额一般用decimal
     /// 只用get不用set是因为不能对金额进行操作，只能读
     /// </summary>
     
        public string BookID { get; set; }
        public string BookImg { get; set; }
        public string BookName { get; set; }
        public decimal MarketPrice { get; set; }
        public int Discount { get; set; }
        public decimal SoldPrice
        {
            get
            {
                return MarketPrice * Discount / 100;
            }
        }
        public decimal DiscountAmount
        {
            get
            {
                return MarketPrice - SoldPrice;
            }
        }
        public int Quantity { get; set; }
        public decimal SoldAmount
        {
            get
            {
                return MarketPrice * Quantity;
            }
        }
    }
}
