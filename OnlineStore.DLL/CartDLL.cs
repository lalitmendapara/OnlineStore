using OnlineStore.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace OnlineStore.DLL
{
    public class CartDLL
    {
        public void SaveToCart(Cart cart)
        {
            try
            {

                using (SqlConnection _con = CommonSqlDAO.GetConnection())
                {
                    using (SqlCommand cmd = new SqlCommand("Usp_Cart_IU", _con))
                    {
                        cmd.Parameters.AddWithValue("@Id", cart.Id);
                        cmd.Parameters.AddWithValue("@ProductId", cart.ProductId);
                        cmd.Parameters.AddWithValue("@Quantity", cart.Quantity);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.ExecuteNonQuery();
                    }
                }


            }
            finally
            {
                CommonSqlDAO.CloseConnection();
            }
        }

        public IEnumerable<CartDetail> GetCartProduct()
        {
            List<CartDetail> cartList = new List<CartDetail>();
            try
            {                
                using (SqlConnection _con = CommonSqlDAO.GetConnection())
                {
                    using (SqlCommand cmd = new SqlCommand("Usp_GetCartProduct", _con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        using (SqlDataReader rdr = cmd.ExecuteReader())
                        {
                            while (rdr.Read())
                            {
                                CartDetail cartDetail = new CartDetail();
                                cartDetail.Id = rdr["cartId"] == DBNull.Value ? 0 : Convert.ToInt32(rdr["cartId"]);
                                cartDetail.ProductId = rdr["ProductId"] == DBNull.Value ? 0 : Convert.ToInt32(rdr["ProductId"]);
                                cartDetail.Quantity = rdr["Quantity"] == DBNull.Value ? 0 : Convert.ToInt32(rdr["Quantity"]);
                                cartDetail.ProductName = rdr["ProductName"] == DBNull.Value ? string.Empty : Convert.ToString(rdr["ProductName"]);
                                cartDetail.ProductDetails = rdr["ProductDetails"] == DBNull.Value ? string.Empty : Convert.ToString(rdr["ProductDetails"]);
                                cartDetail.Price = rdr["Price"] == DBNull.Value ? 0 : Convert.ToDecimal(rdr["Price"]);
                                cartDetail.ProductImg = rdr["ProductImg"] == DBNull.Value ? string.Empty : Convert.ToString(rdr["ProductImg"]);
                                cartDetail.StockQuantity = rdr["cartId"] == DBNull.Value ? 0 : Convert.ToInt32(rdr["StockQuantity"]);
                                cartList.Add(cartDetail);
                            }
                        }
                    }
                }
                return cartList;

            }
            finally
            {
                CommonSqlDAO.CloseConnection();
            }
        }
        public void RemoveCartItem(int Id)
        {
            try
            {

                using (SqlConnection _con = CommonSqlDAO.GetConnection())
                {
                    using (SqlCommand cmd = new SqlCommand("Usp_Cart_D", _con))
                    {
                        cmd.Parameters.AddWithValue("@Id", Id);                      
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            finally
            {
                CommonSqlDAO.CloseConnection();
            }
        }
    }
}
