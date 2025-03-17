import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Halaman Profil',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 30), // Spasi dari atas
            // Gambar profil
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                  'assets/images/me.jpg'), // Ganti dengan path gambar Anda
            ),
            SizedBox(height: 30), // Spasi antara gambar dan teks
            // Nama pengguna
            Text(
              'Muh Devano Alfarizy',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10), // Spasi antara nama dan deskripsi
            // Deskripsi singkat
            Text(
              'Mahasiswa semester 4 di UDB',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30), // Spasi antara deskripsi dan kontak
            Text(
                'Perkenalkan nama saya Muh Devano Alfarizy. Saya lahir di kota Surakarta pada tanggal 3 Maret 2004. Saat ini saya tinggal di Kartasura. Saya saat ini sedang menempuh pendidikan di Universitas Duta Bangsa. Semoga saya bisa mencapai cita-cita untuk menjadi seorang programmer yang handal.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.justify),
          ],
        ),
      )),
    );
  }
}
