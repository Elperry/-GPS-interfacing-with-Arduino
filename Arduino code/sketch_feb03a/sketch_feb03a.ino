#include <LiquidCrystal.h>
#include <string.h>
#include <ctype.h>
 
LiquidCrystal lcd(12, 11, 5, 4, 3, 2);
 
int rxPin = 0; // RX pin
int txPin = 1; // TX pin
char byteGPS=-1;
char cmd[7] = "$GPRMC";
int x = 0; // counts how many bytes were received (max 300)
int counter = 0; // counts how many commas were seen
int offsets[13];
char buf[300] = "";
 
/**
 * Setup display and gps
 */
void setup() {
  pinMode(rxPin, INPUT);
  pinMode(txPin, OUTPUT);
  Serial.begin(9600);
  lcd.begin(16, 2);
  lcd.print("waiting for gps");
  buf[0] = 0;
  reset();
}
 
void reset() {
    x = 0;counter = 0;
}
 
 
int handle_byte(char byteGPS) {
  if (byteGPS == '$' ){x=0;counter++; return 0;}
  if (byteGPS == ',') {offsets[counter]=x-5;counter++; return 0; }
  
  x++;
  if (x==3 && byteGPS != 'R' ){return 1;}
  if (x >=6 ) {
                buf[(x-6)]=byteGPS;
              }
  
  if (x==48){
             lcd.clear(); lcd.setCursor(0, 0);
            for (int i=offsets[9] ; i <=offsets[9]+5 ; i++)
            {
            lcd.print (buf[i]); 
            }
          delay(50000);  
           }
  return 0;
  /**
 1-- from 0 to 5 character num in buf is time (hh mm ss )
 2--          6 is Status A or V
 3--          from 7 to 15 is Latitude 0000.0000         ok
 4--          16 is th Direction (N/S)
 5--          from 17 to 26 is Longitude 00000.0000        ok
 6--          27 is the Direction (E/W)
 7--          from 28 to 32 is the speed in Knot       ok
 8--          from 33 to 37 is Heading in degrees       or from 33 to 38 Date    
 9--          from 38 to 42 is dat (dd mm yy )
 
  $GPRMC , 6 time , 1 Status , 9 Latitude , 1 Dir ,  10 Longitude , 1 Dir , 5 Speed , 5 Headin in degrees , 6 date 
  
  
  
  **/
}
 

void loop() {
  byteGPS=Serial.read();         // Read a byte of the serial port
  if (byteGPS == -1) {           // See if the port is empty yet
                      } 
  else {
    if (handle_byte(byteGPS)) {
      reset();
    }
  }
}
