using OnlineStore.BLL;
using OnlineStore.Model;
using System.Collections.Generic;
using System.Web.Http;

namespace OnlineStoreService.Controllers
{
    public class ProductController : ApiController
    {
        ProductBLL productBLL = new ProductBLL();
      
        //GET :: api/product
        public IEnumerable<Product> Get()
        {
            return productBLL.GetProduct();
        }
    }
      
    
}
