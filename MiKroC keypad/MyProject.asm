
_main:

;MyProject.c,1 :: 		void main() {
;MyProject.c,2 :: 		pcon.f3=1;
	BSF        PCON+0, 3
;MyProject.c,3 :: 		TRISA=0x00;
	CLRF       TRISA+0
;MyProject.c,4 :: 		TRISB=240;
	MOVLW      240
	MOVWF      TRISB+0
;MyProject.c,5 :: 		PORTB=1;
	MOVLW      1
	MOVWF      PORTB+0
;MyProject.c,6 :: 		PORTA=0;
	CLRF       PORTA+0
;MyProject.c,7 :: 		cmcon=7;
	MOVLW      7
	MOVWF      CMCON+0
;MyProject.c,8 :: 		while(1){ portb=1;
L_main0:
	MOVLW      1
	MOVWF      PORTB+0
;MyProject.c,9 :: 		if ( portb==17){porta=1;delay_ms(200);}
	MOVF       PORTB+0, 0
	XORLW      17
	BTFSS      STATUS+0, 2
	GOTO       L_main2
	MOVLW      1
	MOVWF      PORTA+0
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
L_main2:
;MyProject.c,10 :: 		if ( portb==33){porta=2;   }
	MOVF       PORTB+0, 0
	XORLW      33
	BTFSS      STATUS+0, 2
	GOTO       L_main4
	MOVLW      2
	MOVWF      PORTA+0
L_main4:
;MyProject.c,11 :: 		if ( portb==65){porta=3;   }
	MOVF       PORTB+0, 0
	XORLW      65
	BTFSS      STATUS+0, 2
	GOTO       L_main5
	MOVLW      3
	MOVWF      PORTA+0
L_main5:
;MyProject.c,12 :: 		portb=2;
	MOVLW      2
	MOVWF      PORTB+0
;MyProject.c,13 :: 		if ( portb==18){porta=4;   }
	MOVF       PORTB+0, 0
	XORLW      18
	BTFSS      STATUS+0, 2
	GOTO       L_main6
	MOVLW      4
	MOVWF      PORTA+0
L_main6:
;MyProject.c,14 :: 		if ( portb==34){porta=5;   }
	MOVF       PORTB+0, 0
	XORLW      34
	BTFSS      STATUS+0, 2
	GOTO       L_main7
	MOVLW      5
	MOVWF      PORTA+0
L_main7:
;MyProject.c,15 :: 		if ( portb==66){porta=6;   }
	MOVF       PORTB+0, 0
	XORLW      66
	BTFSS      STATUS+0, 2
	GOTO       L_main8
	MOVLW      6
	MOVWF      PORTA+0
L_main8:
;MyProject.c,17 :: 		portb=4;
	MOVLW      4
	MOVWF      PORTB+0
;MyProject.c,18 :: 		if ( portb==20){porta=7;   }
	MOVF       PORTB+0, 0
	XORLW      20
	BTFSS      STATUS+0, 2
	GOTO       L_main9
	MOVLW      7
	MOVWF      PORTA+0
L_main9:
;MyProject.c,19 :: 		if ( portb==36){porta=8;   }
	MOVF       PORTB+0, 0
	XORLW      36
	BTFSS      STATUS+0, 2
	GOTO       L_main10
	MOVLW      8
	MOVWF      PORTA+0
L_main10:
;MyProject.c,20 :: 		if ( portb==68){porta=9;   }
	MOVF       PORTB+0, 0
	XORLW      68
	BTFSS      STATUS+0, 2
	GOTO       L_main11
	MOVLW      9
	MOVWF      PORTA+0
L_main11:
;MyProject.c,22 :: 		portb=8;
	MOVLW      8
	MOVWF      PORTB+0
;MyProject.c,23 :: 		if ( portb==24){porta=10;   }
	MOVF       PORTB+0, 0
	XORLW      24
	BTFSS      STATUS+0, 2
	GOTO       L_main12
	MOVLW      10
	MOVWF      PORTA+0
L_main12:
;MyProject.c,24 :: 		if ( portb==40){porta=11;   }
	MOVF       PORTB+0, 0
	XORLW      40
	BTFSS      STATUS+0, 2
	GOTO       L_main13
	MOVLW      11
	MOVWF      PORTA+0
L_main13:
;MyProject.c,25 :: 		if ( portb==72){porta=12;   }
	MOVF       PORTB+0, 0
	XORLW      72
	BTFSS      STATUS+0, 2
	GOTO       L_main14
	MOVLW      12
	MOVWF      PORTA+0
L_main14:
;MyProject.c,26 :: 		delay_ms(2);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main15:
	DECFSZ     R13+0, 1
	GOTO       L_main15
	DECFSZ     R12+0, 1
	GOTO       L_main15
	NOP
	NOP
;MyProject.c,27 :: 		porta=0;
	CLRF       PORTA+0
;MyProject.c,28 :: 		}
	GOTO       L_main0
;MyProject.c,30 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
