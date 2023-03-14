#define REMOTEXY_MODE__ESP8266WIFI_LIB_CLOUD
#include <ESP8266WiFi.h>
#include <RemoteXY.h>

// RemoteXY connection settings 
#define REMOTEXY_WIFI_SSID "Realme 8"
#define REMOTEXY_WIFI_PASSWORD "########"
#define REMOTEXY_CLOUD_SERVER "cloud.remotexy.com"
#define REMOTEXY_CLOUD_PORT 6376
#define REMOTEXY_CLOUD_TOKEN "6af3530c77e88fc3e74105eab5dc4a37"


// RemoteXY configurate  
#pragma pack(push, 1)
uint8_t RemoteXY_CONF[] =   // 61 bytes
  { 255,1,0,21,0,54,0,16,166,1,2,1,16,32,31,16,148,8,31,31,
  79,78,0,79,70,70,0,130,1,7,6,50,11,162,129,0,10,7,44,9,
  50,70,105,114,101,32,65,108,97,114,109,0,67,5,2,64,59,9,36,26,
  21 };
  
// this structure defines all the variables and events of your control interface 
struct {

    // input variables
  uint8_t led; // =1 if switch ON and =0 if OFF 

    // output variables
  char indicator[21];  // string UTF8 end zero 

    // other variable
  uint8_t connect_flag;  // =1 if wire connected, else =0 

} RemoteXY;
#pragma pack(pop)

/////////////////////////////////////////////
//           END RemoteXY include          //
/////////////////////////////////////////////

#define PIN_LED D7


void setup() 
{
  RemoteXY_Init (); 
  
  pinMode (PIN_LED, OUTPUT);
  
  // TODO you setup code
  
}

void loop() 
{ 
  RemoteXY_Handler ();
  
  digitalWrite(PIN_LED, (RemoteXY.led==0)?LOW:HIGH);
  
  // TODO you loop code
  // use the RemoteXY structure for data transfer
  // do not call delay() 


}
