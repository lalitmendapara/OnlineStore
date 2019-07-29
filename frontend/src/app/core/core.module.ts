import { NgModule } from '@angular/core';
import { SharedModule } from '../shared/shared.module';
import { NavComponent } from './nav/nav.component';

@NgModule({
  declarations: [NavComponent],
  imports: [
    SharedModule
  ],
  exports: [NavComponent]
})
export class CoreModule { }
