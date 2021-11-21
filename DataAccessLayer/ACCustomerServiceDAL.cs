using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using EntityModel; 

namespace DataAccessLayer
{
    public class ACCustomerServiceDAL
    {
        const string connectionString = @"Server=DESKTOP-JVB24ET\SQLEXPRESS01;Database=ACCustomerService;Trusted_Connection=True;";
        SqlConnection sqlcon;
        SqlParameter param;
        SqlDataReader dr;

        public List<ACCustomerServiceEntity> GetACCustomerService()
        {
            ACCustomerServiceEntity entity = null;
            List<ACCustomerServiceEntity> lstEntity = new List<ACCustomerServiceEntity>();

            try
            {
                using (sqlcon = new SqlConnection(connectionString))
                {
                    DataSet ds = new DataSet();
                    SqlCommand cmd = new SqlCommand("dbo.GetACCustomers", sqlcon);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(ds);
                    sqlcon.Open();

                    if (ds.Tables[0] != null && ds.Tables[0].Rows.Count > 0)
                    {
                        foreach (DataRow dr in ds.Tables[0].Rows)
                        {
                            entity = new ACCustomerServiceEntity();

                            entity.CustomerID = Convert.ToInt32(dr["CustomerID"].ToString());
                            entity.FirstName = string.IsNullOrEmpty(dr["FirstName"].ToString()) ? "" : (dr["FirstName"].ToString());
                            entity.LastName = string.IsNullOrEmpty(dr["LastName"].ToString()) ? "" : (dr["FirstName"].ToString());
                            entity.Address = string.IsNullOrEmpty(dr["Address"].ToString()) ? "" : (dr["Address"].ToString());
                            entity.PhoneNumber = string.IsNullOrEmpty(dr["PhoneNumber"].ToString()) ? "" : (dr["PhoneNumber"].ToString());
                            entity.DateCalled = string.IsNullOrEmpty(dr["DateCalled"].ToString()) ? (DateTime?)null : Convert.ToDateTime(dr["DateCalled"].ToString());
                            entity.DateCreated = string.IsNullOrEmpty(dr["DateCreated"].ToString()) ? (DateTime?)null : Convert.ToDateTime(dr["DateCreated"].ToString());

                            lstEntity.Add(entity);
                        }
                    }
                }
            }
            catch (Exception exc)
            {
                throw new Exception(exc.Message);
            }
            finally
            {
                if (dr != null)
                {
                    dr.Close();
                    sqlcon.Close();
                }
            }

            return lstEntity;
        }
        public void InsertACCustomerService(ACCustomerServiceEntity entity)
        {


            try
            {
                using (sqlcon = new SqlConnection(connectionString))
                {
                    DataSet ds = new DataSet();
                    SqlCommand cmd = new SqlCommand("dbo.InsertACCustomer"  , sqlcon);
                    cmd.CommandType = CommandType.StoredProcedure;

                    param = new SqlParameter("FirstName", SqlDbType.VarChar);
                    param.Direction = ParameterDirection.Input;
                    param.Value = entity.FirstName;
                    cmd.Parameters.Add(param);

                    param = new SqlParameter("LastName", SqlDbType.VarChar);
                    param.Direction = ParameterDirection.Input;
                    param.Value = entity.LastName;
                    cmd.Parameters.Add(param);

                    param = new SqlParameter("Address", SqlDbType.Text);
                    param.Direction = ParameterDirection.Input;
                    param.Value = entity.Address;
                    cmd.Parameters.Add(param);

                    param = new SqlParameter("PhoneNumber", SqlDbType.VarChar);
                    param.Direction = ParameterDirection.Input;
                    param.Value = entity.PhoneNumber;
                    cmd.Parameters.Add(param);

                    param = new SqlParameter("DateCalled", SqlDbType.Date);
                    param.Direction = ParameterDirection.Input;
                    param.Value = entity.DateCalled;
                    cmd.Parameters.Add(param);

                    param = new SqlParameter("DateCreated", SqlDbType.Date);
                    param.Direction = ParameterDirection.Input;
                    param.Value = entity.DateCreated;
                    cmd.Parameters.Add(param);

                    sqlcon.Open();
                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception exc)
            {
                throw new Exception(exc.Message);
            }
            finally
            {
                if (dr != null)
                {
                    dr.Close();
                    sqlcon.Close();
                }
            }           
        }
    }
}
