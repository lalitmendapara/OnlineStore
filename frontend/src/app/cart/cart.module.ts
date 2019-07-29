import { NgModule } from '@angular/core';
import { CartlistComponent } from './cartlist/cartlist.component';
import { CartitemComponent } from './cartitem/cartitem.component';
import { SharedModule } from '../shared/shared.module';
import { FormsModule } from '@angular/forms';

@NgModule({
  declarations: [CartlistComponent, CartitemComponent],
  imports: [
    SharedModule,
    FormsModule,
  ]
})
export class CartModule { }
