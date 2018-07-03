using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BardFinalProject
{
    public class Cart
    {
        private List<Product> products;

        public Cart()
        {
            products = new List<Product>();
        }

        public Product this[int index]
        {
            get { return products[index]; }
            set { products[index] = value; }
        }

        public int Count
        {
            get { return products.Count; }
        }

        public decimal TotalCost
        {
            get {
                    decimal totalCost = 0;

                    foreach (Product p in products)
                        totalCost += p.Price;

                    return totalCost;
                }
        }

        public static Cart getCart()
        {
            if (HttpContext.Current.Session["myCart"] == null)
                HttpContext.Current.Session["myCart"] = new Cart();

            return (Cart)HttpContext.Current.Session["myCart"];
        }

        public void AddProduct(Product prod)
        {
            products.Add(prod);
        }

        public void RemoveAt(int index)
        {
            products.RemoveAt(index);
        }

        public void Clear()
        {
            products.Clear();
        }
    }
}