using DataAccessLayer;
using EntityModel;
using System;
using System.Collections.Generic;

namespace BAL
{
    public class ACCustomerServiceBAL
    {
        ACCustomerServiceDAL _objACCSDAL;

        public List<ACCustomerServiceEntity> GetACCustomerService()
        {
            try
            {
                _objACCSDAL = new ACCustomerServiceDAL();
                return _objACCSDAL.GetACCustomerService();
            }
            catch (Exception exc)
            {
                throw exc;
            }
        }
    }
}
