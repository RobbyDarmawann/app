
# Cek Suhu Kolam & Monitoring Pompa

Aplikasi **Cek Suhu Kolam** merupakan aplikasi mobile berbasis Flutter yang digunakan untuk melakukan monitoring suhu air kolam secara real-time dan status pompa air yang digunakan pada sistem perairan.

## 🚀 Fitur Utama

- **Splash Screen Animasi** — Menampilkan logo aplikasi dan loading animasi saat aplikasi dibuka pertama kali.
- **Dashboard Monitoring** — Menampilkan data suhu dari 10 kolam ikan secara visual menggunakan grid.
- **Status Pompa Air** — Menampilkan status pompa air aktif/tidak dengan indikator warna.
- **Detail Setiap Kolam** — Pengguna dapat melihat informasi lebih lanjut dengan men-tap masing-masing kolam.

## 📱 Tampilan Antarmuka
- Warna utama: Cyan dan Turunan Biru.
- Ikon suhu dan pompa ditampilkan secara intuitif.
- Indikator peringatan suhu tinggi ditandai dengan warna kuning.

## 🛠️ Teknologi
- Flutter
- Dart
- Asset Image Based UI

## 📂 Struktur Utama
- `main.dart` — Entry point aplikasi
- `screens/splash_screen.dart` — Splash screen animasi
- `screens/homepage.dart` — Dashboard dan detail monitoring

## 📦 Instalasi & Build
1. Jalankan `flutter pub get` untuk mengambil semua dependensi.
2. Jalankan aplikasi via emulator atau perangkat Android:
   ```bash
   flutter run
   ```
3. Untuk membangun APK:
   ```bash
   flutter build apk
   ```

## 🧑‍💻 Pengembang
Dikembangkan sebagai solusi monitoring kolam air & kontrol pompa untuk sistem pertanian atau perikanan modern.
