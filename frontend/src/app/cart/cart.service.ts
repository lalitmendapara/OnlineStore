import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/environment';
import { BehaviorSubject } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class CartService {
  private dataSource = new BehaviorSubject<number>(0);
  data = this.dataSource.asObservable();


  navURLVal = false;
  constructor(private http: HttpClient) { }

  SaveToCart(cart) {
    return this.http.post(`${environment.baseUrl}api/Cart`, cart);
  }
  GetCartProduct() {
    return this.http.get(`${environment.baseUrl}api/Cart`);
  }
  RemoveCartItem(Id) {
    return this.http.delete(`${environment.baseUrl}api/Cart/${Id}`);
  }
  UpdatedCartSelection(data) {
    this.dataSource.next(data);
  }
  UpdateURL() {
    this.navURLVal = true;
  }
}
