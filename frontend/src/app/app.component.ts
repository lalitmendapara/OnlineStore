import { Component, ViewChild, ElementRef, AfterViewInit } from '@angular/core';
import { Title } from '@angular/platform-browser';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements AfterViewInit {

  @ViewChild('appTitle') h1: ElementRef;
  constructor(private titleService: Title) {
    this.titleService.setTitle('Online Store');
  }

  ngAfterViewInit() {
    this.h1.nativeElement.textContent = 'Welcome to  OnlineStore !!';
  }
}
