using OnlineStore.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace OnlineStore.DLL
{
    public class ProductDLL
    {
        public IEnumerable<Product> GetProduct()
        {
            List<Product> productList = new List<Product>();
            try
            {                
                using (SqlConnection _con = CommonSqlDAO.GetConnection())
                {
                    using (SqlCommand cmd = new SqlCommand("Usp_GetProduct", _con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        using (SqlDataReader rdr = cmd.ExecuteReader())
                        {
                            while (rdr.Read())
                            {
                                Product product = new Product();
                                product.Id = rdr["Id"] == DBNull.Value ? 0 : Convert.ToInt32(rdr["Id"]);
                                product.ProductName = rdr["ProductName"] == DBNull.Value ? string.Empty : Convert.ToString(rdr["ProductName"]);
                                product.ProductDetails = rdr["ProductDetails"] == DBNull.Value ? string.Empty : Convert.ToString(rdr["ProductDetails"]);
                                product.Price = rdr["Price"] == DBNull.Value ? 0 : Convert.ToDecimal(rdr["Price"]);
                                product.Quantity = rdr["Quantity"] == DBNull.Value ? 0 : Convert.ToInt32(rdr["Quantity"]);
                                product.ProductImg = rdr["ProductImg"] == DBNull.Value ? string.Empty : Convert.ToString(rdr["ProductImg"]);
                                product.IsInCart = rdr["IsInCart"] == DBNull.Value ? false : Convert.ToBoolean(rdr["IsInCart"]);

                                productList.Add(product);
                            }
                        }
                    }
                }
                return productList;

            }
            finally
            {
                CommonSqlDAO.CloseConnection();
            }
        }

    }
}
