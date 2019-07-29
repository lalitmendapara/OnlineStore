import { IProduct } from './iproduct';

export class Product implements IProduct {
  constructor(public Id: number, public ProductName: string, public ProductDetails: string, public Price: number, public Quantity: number,
    public ProductImg: string, public IsInCart: boolean) {

  }
}
