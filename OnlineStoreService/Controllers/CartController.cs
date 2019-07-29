using OnlineStore.BLL;
using OnlineStore.Model;
using System.Collections.Generic;
using System.Web.Http;

namespace OnlineStoreService.Controllers
{
    public class CartController : ApiController
    {

        CartBLL cartBLL = new CartBLL();

        //POST :: api/Cart
        public void Post(Cart cart)
        {
            cartBLL.SaveToCart(cart);
        }

        //GET :: api/Cart
        public IEnumerable<CartDetail> Get()
        {
            return cartBLL.GetCartProduct();
        }

        //Delete :: api/Cart/1
        public void Delete(int Id)
        {
            cartBLL.RemoveCartItem(Id);
        }
    }
}
