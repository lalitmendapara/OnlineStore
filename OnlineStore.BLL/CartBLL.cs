using OnlineStore.DLL;
using OnlineStore.Model;
using System.Collections.Generic;

namespace OnlineStore.BLL
{
    public class CartBLL
    {
        CartDLL cartDLL = new CartDLL();
        public void SaveToCart(Cart cart)
        {
            cartDLL.SaveToCart(cart);
        }
        public IEnumerable<CartDetail> GetCartProduct()
        {
            return cartDLL.GetCartProduct();
        }
        public void RemoveCartItem(int Id)
        {
            cartDLL.RemoveCartItem(Id);
        }
    }
}
