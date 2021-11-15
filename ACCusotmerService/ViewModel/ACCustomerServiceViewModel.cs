using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AcCustomerService.ViewModel
{
    public class ACCustomerServiceViewModel
    {
        public int CustomerID  { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Address { get; set; }
        public string PhoneNumber { get; set; }
        public DateTime? DateCalled { get; set; }
        public DateTime? DateCreated { get; set; }
    }
}