import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';
import { CartService } from '../cart.service';
import { HttpErrorResponse } from '@angular/common/http';
import { ProductService } from 'src/app/product/product.service';
import { Cart } from '../cart';
import { Title } from '@angular/platform-browser';


@Component({
  selector: 'app-cartitem',
  templateUrl: './cartitem.component.html',
  styleUrls: ['./cartitem.component.css']
})
export class CartitemComponent implements OnInit {
  @Input() selectedCartItem: any;
  @Output() isCartitem = new EventEmitter<any>();
  OutOfStockMessage = null;
  initialStock = 0;
  constructor(private cartService: CartService, private productService: ProductService, private titleService: Title) {
    this.titleService.setTitle('My Cart Item');
  }

  ngOnInit() {
    this.initialStock = this.selectedCartItem.Quantity;
  }
  RemoveFromCart() {
    this.cartService.RemoveCartItem(this.selectedCartItem.Id)
      .subscribe((data: any) => {
        this.isCartitem.emit(true);
        if (data) {
          this.cartService.UpdatedCartSelection(data.length);
        }
      }, (err: HttpErrorResponse) => {
        console.log(err);
      });
  }
  QuantityChanged($event) {
    if (this.selectedCartItem.StockQuantity >= Number($event.srcElement.value)) {
      const cart = new Cart();
      cart.ProductId = this.selectedCartItem.ProductId;
      cart.Quantity = Number($event.srcElement.value);
      this.cartService.SaveToCart(cart)
        .subscribe((data: any) => {

        }, (err: HttpErrorResponse) => {
          console.log(err);
        });
    } else {
      this.OutOfStockMessage = `Only ${this.selectedCartItem.StockQuantity} is Available`;
      setTimeout(() => {
        this.OutOfStockMessage = null;
        this.selectedCartItem.Quantity = this.initialStock;
      }, 5000);
    }
  }
  close() {
    this.OutOfStockMessage = null;
    this.selectedCartItem.Quantity = this.initialStock;
  }
}
