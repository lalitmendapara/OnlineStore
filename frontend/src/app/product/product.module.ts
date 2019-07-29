import { NgModule } from '@angular/core';
import { ProductlistComponent } from './productlist/productlist.component';
import { SharedModule } from '../shared/shared.module';
import { HttpClientModule } from '@angular/common/http';

@NgModule({
  declarations: [ProductlistComponent],
  imports: [
    SharedModule,
    HttpClientModule
  ]
})
export class ProductModule { }
