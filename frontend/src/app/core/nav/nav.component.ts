import { Component, OnInit } from '@angular/core';
import { CartService } from 'src/app/cart/cart.service';

@Component({
  selector: 'app-nav',
  templateUrl: './nav.component.html',
  styleUrls: ['./nav.component.css']
})
export class NavComponent implements OnInit {
  count = 0;
  constructor(private cartService: CartService) {
    this.cartService.data.subscribe(data => {
      this.count = data;
    });
  }

  ngOnInit() {
  }
  navValidator() {
    this.cartService.UpdateURL();
  }
}
