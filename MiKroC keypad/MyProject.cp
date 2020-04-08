#line 1 "C:/Users/Mohammad/Desktop/GPS Arduino/MiKroC keypad/MyProject.c"
void main() {
 pcon.f3=1;
 TRISA=0x00;
 TRISB=240;
 PORTB=1;
 PORTA=0;
 cmcon=7;
 while(1){ portb=1;
 if ( portb==17){porta=1;delay_ms(200);}
 if ( portb==33){porta=2; }
 if ( portb==65){porta=3; }
 portb=2;
 if ( portb==18){porta=4; }
 if ( portb==34){porta=5; }
 if ( portb==66){porta=6; }

 portb=4;
 if ( portb==20){porta=7; }
 if ( portb==36){porta=8; }
 if ( portb==68){porta=9; }

 portb=8;
 if ( portb==24){porta=10; }
 if ( portb==40){porta=11; }
 if ( portb==72){porta=12; }
 delay_ms(2);
 porta=0;
 }

}
