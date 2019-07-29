import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ProductlistComponent } from './product/productlist/productlist.component';
import { CartlistComponent } from './cart/cartlist/cartlist.component';
import { CartitemComponent } from './cart/cartitem/cartitem.component';

const routes: Routes = [
  { path: 'productlist', component: ProductlistComponent },
  { path: 'cartlist', component: CartlistComponent },
  { path: 'cartitem', component: CartitemComponent },

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
