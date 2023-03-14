#define REMOTEXY_MODE__ESP8266WIFI_LIB_POINT
#include <ESP8266WiFi.h>
#include <RemoteXY.h>

#define REMOTEXY_WIFI_SSID "FireAlarm"
#define REMOTEXY_WIFI_PASSWORD "fire1234"
#define REMOTEXY_SERVER_PORT 6377
 
#pragma pack(push, 1)

uint8_t RemoteXY_CONF[] =   // 36 bytes
  { 255,1,0,17,0,29,0,16,31,1,67,1,4,49,55,9,37,26,17,2,
  1,21,23,22,11,162,26,31,31,79,78,0,79,70,70,0 };
  
// this structure defines all the variables and events of your control interface 
struct {

    // input variables
  uint8_t led; // =1 if switch ON and =0 if OFF 

    // output variables
  char indicator[17];  // string UTF8 end zero 

    // other variable
  uint8_t connect_flag;  // =1 if wire connected, else =0 

} RemoteXY;
#pragma pack(pop)

/////////////////////////////////////////////
//           END RemoteXY include          //
/////////////////////////////////////////////

#define PIN_LED D7
#define PIN_Sensor D0
#define PIN_R D2
#define PIN_Buzzer D4

void setup() 
{
  RemoteXY_Init (); 

  pinMode (PIN_LED, OUTPUT);
  pinMode (PIN_R, OUTPUT);
  Serial.begin(9600);
}

void loop() 
{ 
  RemoteXY_Handler ();
  
  digitalWrite(PIN_LED, (RemoteXY.led==0)?LOW:HIGH);
  int a = digitalRead(D0);
  Serial.println(a);
  if(!a) {
    digitalWrite(PIN_Buzzer,LOW);
    digitalWrite(PIN_R, HIGH);
    strcpy(RemoteXY.indicator,"Fire Detected!!");
  }
  else{
    digitalWrite(PIN_Buzzer,HIGH);
    digitalWrite(PIN_R, LOW);
    strcpy(RemoteXY.indicator,"");
  }
}
