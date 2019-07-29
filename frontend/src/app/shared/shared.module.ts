import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule } from '@angular/router';
import { NghoverDirective } from './nghover.directive';

@NgModule({
  declarations: [NghoverDirective],
  imports: [

  ],
  exports: [
    CommonModule,
    RouterModule,
    NghoverDirective,
  ]
})
export class SharedModule { }
