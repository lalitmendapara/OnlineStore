import { Directive, HostListener, ElementRef, HostBinding } from '@angular/core';

@Directive({
  selector: '[appNghover]'
})
export class NghoverDirective {

  constructor(private el: ElementRef) {
  }
  @HostBinding('style.border') border: string;

  @HostListener('mouseenter') onMouseEnter() {
    if (!this.el.nativeElement.classList.contains('clshilight')) {
      this.el.nativeElement.classList.add('clshilight');
      this.border = '1px solid #007bff';
    }
  }

  @HostListener('mouseleave') onMouseLeave() {
    if (this.el.nativeElement.classList.contains('clshilight')) {
      this.el.nativeElement.classList.remove('clshilight');
      this.border = '';
    }
  }

}
