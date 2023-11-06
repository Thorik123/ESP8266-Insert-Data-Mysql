// NodeMCU esp8266 save data to mysql database with GET methode

#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>

const char *ssid = "Your WiFi SSID";
const char *password = "Your WiFi Password";

unsigned long timeInterval = 0;

void setup()
{
  Serial.begin(115200);
  Serial.println("Connecting to WiFi");
  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED)
  {
    Serial.print(".");
    delay(500);
  }
  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
  Serial.println();
}

void loop()
{
  if ((millis() - timeInterval) >= 10000)
  {
    double kelembaban = random(0, 99);
    double suhu = random(0, 99);

    // Serial.print(F("Temperature:"));
    // Serial.print(suhu);
    // Serial.print(F("°C   Humidity:"));
    // Serial.print(kelembaban);
    // Serial.println(F("%"));

    if ((WiFi.status() == WL_CONNECTED))
    {
      WiFiClient client;
      HTTPClient http;

      String address;
      address = "http://192.168.xx.xxx/esp_log/api/create.php?suhu=";
      address += String(suhu);
      address += "&kelembaban=";
      address += String(kelembaban);

      http.begin(client, address);
      int httpCode = http.GET();
      String payload;
      if (httpCode > 0)
      {
        payload = http.getString();
        payload.trim();
        if (payload.length() > 0)
        {
          Serial.println(payload + "\n");
        }
      }

      http.end();
    }
    else
    {
      Serial.print("Not connected to wifi ");
    }
    timeInterval = millis();
  }
}