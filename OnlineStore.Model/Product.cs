namespace OnlineStore.Model
{
    public class Product
    {
        public int Id { get; set; }
        public string ProductName { get; set; }
        public string ProductDetails { get; set; }
        public decimal Price { get; set; }
        public string ProductImg { get; set; }
        public int Quantity { get; set; }
        public bool IsInCart { get; set; }
    }
}
