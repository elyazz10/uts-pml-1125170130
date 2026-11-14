# UTS Pemrograman Mobile (PML)

Repositori pengerjaan Ujian Tengah Semester (UTS) Mata Kuliah Pemrograman Mobile.

## 👤 Identitas Mahasiswa
* **Nama**: ahmad ilyas
* **NIM**: 1125170130
* **Kelas**: TI25KS
* **Program Studi**: Tekhnik Informatika

---

## 📁 Struktur Repositori

```text
uts-pml-1125170130/
├── soal1_live_coding/    # Soal 1: Pengerjaan Live Coding (Profil Mahasiswa)
└── soal2_profile_app/    # Soal 2: Proyek Lengkap Aplikasi Android Profil Mahasiswa
```

---

## 📝 Ringkasan Proyek

### 1. `soal1_live_coding`
* Aplikasi profil mahasiswa yang dikerjakan saat sesi live coding secara bertahap (Tahap 1 s.d. Tahap 3).
* Menggunakan widget dasar Flutter: `MaterialApp`, `Scaffold`, `CircleAvatar`, `Card`, dan widget kustom `infotile`.

### 2. `soal2_profile_app`
* Aplikasi Android lengkap dengan arsitektur terstruktur:
  * **Halaman Login**: Form validasi + loading indicator + `Navigator.pushReplacementNamed`.
  * **Halaman Profil**: Foto dari `assets/images/`, info mahasiswa, kontak card, refresh state dinamis via `setState()`.
  * **Halaman Edit Profil**: Form dengan validasi nama wajib, email valid regex, nomor HP 10-13 digit angka, pengembalian data via `Navigator.pop(context, dataBaru)`.
  * **Halaman Tentang Saya**: Daftar keahlian, hobi, dan riwayat pendidikan menggunakan `ListView`.
  * **Scaffold Lengkap**: Dilengkapi dengan `Drawer`, `BottomNavigationBar`, dan `FloatingActionButton`.
  * **Tema Interaktif**: Mendukung `ThemeMode.light` dan `ThemeMode.dark` dengan switcher instan.
  * **Identitas Android**: Nama aplikasi pada HP Android: **Profil Ilyas** (`android:label="Profil Ilyas"`).
* Untuk dokumentasi lengkap, panduan menjalankan, serta tautan video presentasi YouTube, silakan buka [README Soal 2](soal2_profile_app/README.md).

