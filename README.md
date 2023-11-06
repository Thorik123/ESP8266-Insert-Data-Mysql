## ESP8266 Insert Data To Mysql Database

- Berikut adalah project untuk insert/memasukkan atau menyimpan ke table di database Mysql. Selanjutnya data tersebut bisa diolah misal untuk ditampilkan di web dan sebagainya.

---

## How To Works?

- Ada dua Methode dalam pengiriman data, yaitu methode `GET` dan methode `POST`. Tinggal disesuaikan lebih nyaman pakai yang mana.
- Sebagai contoh data yang dikirim adalah nilai `suhu` dan `kelembaban`.
- Untuk data yang dikirim bisa apa saja tetapi pastikan untuk parameter yang ada didalam table sesuai dengan jenis data yang dikirim dari device(ESP8266).

---

## Persiapan

- Install Laragon atau XAMPP sebagai server localhost.
- Install Code Editor, bisa pakai Visual Stdudio Code, Sublime Text atau editor yang lain.
- Buka panel `phpmyadmin` lalu buat database baru dengan nama `esp_log` lalu import file `esp_log.sql` yang ada didalam folder MYSQl.

---

## Konfigurasi

- Untuk langkah konfigurasi terbagi menjadi 2 bagian, yaitu:
  - #### Server (Komputer/Laptop)
    - Buat Folder baru didalam direktori project server localhost `htdocs` kalau XAMPP dan `www` jika Laragon dengan nama `esp_log` atau bebas. Copy semua folder yang ada didalam folder `PHP-Code` lalu paste didalam folder yang sudah dibuat sebelumnya.
    - Buka file `config.php` yang terletak didalam folder config lalu sesuaikan parameter berikut:
    ```php
    private $host = "localhost";
    private $database_name = "esp_log";
    private $username = "root";
    private $password = "";
    ```
    Untuk `localhost` biarkan saja, selanjutnya `esp_log` ini adalah nama database, sesuaikan jika nama databasenya berbeda. Untuk `root` ini adalah username, Jika masih default biarkan saja begitu juga untuk password.
  - #### Device (ESP8266)
    - Pastikan untuk parameter WiFi (ssid dan password) sudah disesuaikan dengan jaringan yang digunakan. Silahkan ubah pada bagian berikut:
    ```cpp
    const char *ssid = "Your WiFi SSID";
    const char *password = "Your WiFi Password";
    ```
    Ubah `Your WiFi SSID` dengan nama SSID WiFi yang digunakan dan `Your WiFi Password` untuk password WiFi yang digunakan.
    - Ubah alamat url yang akan menjadi tujuan pengiriman data, Silahkan ubah pada bagian berikut:
      - Untuk methode `GET`
      ```cpp
      String address;
      address = "http://192.168.xx.xxx/esp_log/api/create.php?suhu=";
      address += String(suhu);
      address += "&kelembaban=";
      address += String(kelembaban);
      ```
      Karena ini masih menggunakan server local (localhost) silahkan ganti `http://192.168.xx.xxx` sesuai dengan IP Address server yang kalian pakai, dengan catatan antara server dan device(ESP8266) harus terhubung dijaringan yang sama.
      - Untuk methode `POST`
      ```cpp
      url = "http://192.168.xx.xxx/esp_log/api/create.php";
      ```
      Tidak jauh berbeda dengan methode `GET`, sesuaikan IP Address yang server yang digunakan.

---

### Catatan!

- Perhatikan versi php yang digunakan, Project ini sudah ditest di php versi `8.1.10` dan berjalan dengan baik. Adapun jika menggunakan versi php yang berbeda mungkin perlu adanya perubahan pada bagian program php-nya.
- Editor
  - ArduinoIDE 2.2.1
- Board ESP8266 by ESP8266 Community
  - Version 3.1.2
- Library
  - ArduinoJson version 6.21.3

---
