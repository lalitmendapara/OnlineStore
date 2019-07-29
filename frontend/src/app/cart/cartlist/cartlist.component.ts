import { Component, OnInit } from '@angular/core';
import { HttpErrorResponse } from '@angular/common/http';
import { ProductService } from 'src/app/product/product.service';
import { CartService } from '../cart.service';
import { Title } from '@angular/platform-browser';

@Component({
  selector: 'app-cartlist',
  templateUrl: './cartlist.component.html',
  styleUrls: ['./cartlist.component.css']
})
export class CartlistComponent implements OnInit {
  isInitialLoadInProgress = false;
  count = 0;
  totalPrice = 0;
  selectedCartItem: any;
  constructor(private productService: ProductService, public cartService: CartService, private titleService: Title) {
    this.cartService.data.subscribe(data => {
      this.count = data;
    });
    this.cartService.navURLVal = true;
    this.titleService.setTitle('My Cart');
  }
  cartList = [];
  ngOnInit() {
    this.GetCartProduct();
  }
  GetCartProduct() {
    this.cartService.GetCartProduct()
      .subscribe((data: any) => {
        this.cartService.UpdatedCartSelection(data.length);
        this.cartList = data;
      }, (err: HttpErrorResponse) => {
        console.log(err);
      });
  }
  TotalAmount() {
    this.totalPrice = 0;
    this.cartList.forEach(element => {
      this.totalPrice += element.Price * element.Quantity;
    });
    return this.totalPrice;
  }
  ViewCartitem(cart) {
    this.selectedCartItem = cart;
    this.cartService.navURLVal = false;
  }
  Cartitem($event) {
    this.cartService.navURLVal = true;
    this.GetCartProduct();
  }
}
