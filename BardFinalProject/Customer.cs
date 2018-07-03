using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BardFinalProject
{
    public class Customer
    {
        private int _CustomerID;
        private string _Name;
        private string _Address;
        private string _City;
        private string _State;
        private string _ZipCode;
        private string _Phone;
        private string _Email;
        private string _UserName;
        private string _Password;

        public int CustomerID
        {
            get { return _CustomerID; }
            set { _CustomerID = value; }
        }

        public string Name
        {
            get { return _Name; }
            set { _Name = value; }
        }

        public string Address
        {
            get { return _Address; }
            set { _Address = value; }
        }

        public string City
        {
            get { return _City; }
            set { _City = value; }
        }

        public string State
        {
            get { return _State; }
            set { _State = value; }
        }

        public string ZipCode
        {
            get { return _ZipCode; }
            set { _ZipCode = value; }
        }

        public string Phone
        {
            get { return _Phone; }
            set { _Phone = value; }
        }

        public string Email
        {
            get { return _Email; }
            set { _Email = value; }
        }

        public string UserName
        {
            get { return _UserName; }
            set { _UserName = value; }
        }

        public string Password
        {
            get { return _Password; }
            set { _Password = value; }
        }
    }
}