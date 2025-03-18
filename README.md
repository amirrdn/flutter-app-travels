# Flutter Trip App

Aplikasi perjalanan yang dibangun menggunakan Flutter untuk membantu pengguna merencanakan dan mengelola perjalanan mereka.

## Requirement

Sebelum memulai pengembangan, pastikan sistem Anda memenuhi requirement berikut:

- Flutter SDK (versi terbaru)
- Dart SDK (versi terbaru)
- Android Studio / VS Code dengan ekstensi Flutter
- Git
- Android SDK (untuk pengembangan Android)
- Xcode (untuk pengembangan iOS, hanya macOS)
- CocoaPods (untuk pengembangan iOS, hanya macOS)

## Instalasi

1. **Instalasi Flutter SDK**
   ```bash
   # Download Flutter SDK dari https://flutter.dev/docs/get-started/install
   # Ekstrak file ke lokasi yang diinginkan
   # Tambahkan Flutter ke PATH sistem
   ```

2. **Verifikasi Instalasi**
   ```bash
   flutter doctor
   ```
   Perintah ini akan memeriksa environment dan menampilkan laporan status instalasi Flutter.

3. **Clone Repository**
   ```bash
   git clone git@github.com:amirrdn/flutter-app-travels.git
   cd flutter-app-travels
   ```

4. **Instalasi Dependencies**
   ```bash
   flutter pub get
   ```

5. **Menjalankan Aplikasi**
   ```bash
   flutter run
   ```

## Struktur Proyek

```
wizh_trip_app/
├── lib/                    # Source code utama
├── assets/                # Asset seperti gambar, font, dll
├── test/                  # File test
├── android/               # Konfigurasi Android
├── ios/                   # Konfigurasi iOS
└── pubspec.yaml          # Konfigurasi dependencies
```

## Pengembangan

- Gunakan `flutter pub get` setiap kali ada perubahan pada `pubspec.yaml`
- Jalankan `flutter analyze` untuk memeriksa kode
- Gunakan `flutter test` untuk menjalankan unit test

## Troubleshooting

Jika mengalami masalah saat instalasi:

1. Pastikan semua requirement terpenuhi
2. Jalankan `flutter doctor` untuk melihat detail masalah
3. Ikuti panduan troubleshooting di [dokumentasi Flutter](https://flutter.dev/docs/get-started/install)

## Kontribusi

Silakan berkontribusi dengan membuat pull request atau melaporkan issues.

## Lisensi

Proyek ini dilisensikan di bawah [MIT License](LICENSE).
