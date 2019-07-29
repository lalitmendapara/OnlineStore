import { Component, OnInit } from '@angular/core';
import { ProductService } from '../product.service';
import { HttpErrorResponse } from '@angular/common/http';
import { CartService } from 'src/app/cart/cart.service';
import { Product } from '../product';
import { Cart } from 'src/app/cart/cart';
import { Title } from '@angular/platform-browser';
import { finalize } from 'rxjs/operators';

@Component({
  selector: 'app-productlist',
  templateUrl: './productlist.component.html',
  styleUrls: ['./productlist.component.css']
})
export class ProductlistComponent implements OnInit {
  isInitialLoadInProgress = false;
  count = 0;
  constructor(private productService: ProductService, private cartService: CartService, private titleService: Title) {
    this.cartService.data.subscribe(data => {
      this.count = data;
    });
    this.titleService.setTitle('Products');
  }
  productList: Array<Product> = [];
  ngOnInit() {
    this.GetProduct();
  }
  GetCartProduct() {
    this.cartService.GetCartProduct()
      .subscribe((data: any) => {
        this.cartService.UpdatedCartSelection(data.length);
      }, (err: HttpErrorResponse) => {
        console.log(err);
      });
  }
  GetProduct() {
    this.isInitialLoadInProgress = true;
    this.productService.GetProduct()
      .pipe(finalize(() => this.isInitialLoadInProgress = false))
      .subscribe((data: any) => {
        Object.assign(this.productList, data);
        this.GetCartProduct();
      }, (err: HttpErrorResponse) => {
        console.log(err);
      });
  }
  AddToCart(row: Product) {
    this.count = this.count + 1;
    this.cartService.UpdatedCartSelection(this.count);
    const cart = new Cart();
    cart.ProductId = row.Id;
    cart.Quantity = 1;
    this.cartService.SaveToCart(cart)
      .subscribe((data: any) => {
        row.IsInCart = true;
      }, (err: HttpErrorResponse) => {
        console.log(err);
      });
  }

}
