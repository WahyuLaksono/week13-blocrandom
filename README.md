# bloc_random_wahyulak

A new Flutter project.

## Wahyu Laksono Saputra || 362358302107

# Soal 13

Praktikum ini bertujuan untuk menunjukkan penerapan pola BLoC (Business Logic Component) dalam pengembangan aplikasi Flutter. BLoC adalah pola arsitektur yang memisahkan logika bisnis dari antarmuka pengguna (UI), sehingga membuat kode lebih terstruktur, mudah dipelihara, dan dapat diuji.

Penjelasan:

1. RandomNumberBloc:
    - Kelas ini adalah komponen BLoC yang bertanggung jawab untuk menghasilkan angka acak.
    - Terdapat dua StreamController:
        - _generateRandomController: Mengontrol input untuk menghasilkan angka acak.
        - _randomNumberController: Mengontrol output yang berisi angka acak yang dihasilkan.
    - Sink<void> get generateRandom: Ini adalah sink untuk menerima perintah untuk menghasilkan angka acak.
    - Stream<int> get randomNumber: Ini adalah stream yang mengeluarkan angka acak yang dihasilkan.
    - Di dalam konstruktor, terdapat listener yang mendengarkan event dari _generateRandomController. Ketika event diterima, angka acak dihasilkan dan ditambahkan ke _randomNumberController.

2. RandomScreen:
    - Kelas ini adalah widget Flutter yang menampilkan antarmuka pengguna.
    - Menggunakan StreamBuilder untuk mendengarkan stream randomNumber dari BLoC. Ketika ada angka baru yang dihasilkan, UI akan diperbarui secara otomatis.
    - Terdapat FloatingActionButton yang ketika ditekan, akan memicu event untuk menghasilkan angka acak dengan menambahkan null ke sink generateRandom.

![Soal 13](<assets/Screenshot (532).png>)
![Soal 13](<assets/Screenshot (533).png>)
![Soal 13](<assets/Screenshot (534).png>)