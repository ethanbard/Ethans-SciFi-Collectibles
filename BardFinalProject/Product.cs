using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BardFinalProject
{
    public class Product
    {
        private int _productID;
        private string _name;
        private string _category;
        private decimal _price;

        public Product()
        {
            _productID = 0;
            _name = "";
            _category = "";
            _price = 0;
        }

        public int ProductID
        {
            get { return _productID; }
            set { _productID = value; }
        }

        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }
        
        public string Category
        {
            get { return _category; }
            set { _category = value; }
        }
        
        public decimal Price
        {
            get { return _price; }
            set { _price = value; }
        }
    }
}