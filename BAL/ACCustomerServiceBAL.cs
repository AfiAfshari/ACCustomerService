using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using DataAccessLayer;
using EntityModel;

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
