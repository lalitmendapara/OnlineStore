using OnlineStore.DLL;
using OnlineStore.Model;
using System.Collections.Generic;

namespace OnlineStore.BLL
{
    public class ProductBLL
    {
        ProductDLL productDLL = new ProductDLL();
        public IEnumerable<Product> GetProduct()
        {
            return productDLL.GetProduct();
        }
    }
}
