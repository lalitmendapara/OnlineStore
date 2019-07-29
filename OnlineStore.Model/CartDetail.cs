namespace OnlineStore.Model
{
    public class CartDetail
    {
        public int Id { get; set; }
        public int ProductId { get; set; }
        public int Quantity { get; set; }
        public int UserId { get; set; }
        public string ProductName { get; set; }
        public string ProductDetails { get; set; }
        public decimal Price { get; set; }
        public string ProductImg { get; set; }
        public int StockQuantity { get; set; }
    }
}
