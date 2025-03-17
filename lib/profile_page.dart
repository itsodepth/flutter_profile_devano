import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, required String title});

  // Fungsi untuk membuka tautan URL
  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Tidak dapat membuka $url';
    }
  }

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
              SizedBox(height: 30),
              // Gambar profil
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/me.jpg'),
              ),
              SizedBox(height: 30),
              // Nama pengguna
              Text(
                'Muh Devano Alfarizy',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              // Deskripsi singkat
              Text(
                'Mahasiswa semester 4 di UDB',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              // Deskripsi panjang
              Text(
                'Perkenalkan nama saya Muh Devano Alfarizy. Saya lahir di kota Surakarta pada tanggal 3 Maret 2004. Saat ini saya tinggal di Kartasura. Saya saat ini sedang menempuh pendidikan di Universitas Duta Bangsa. Semoga saya bisa mencapai cita-cita untuk menjadi seorang programmer yang handal.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 30),
              // Informasi Kontak
              ListTile(
                leading: Icon(Icons.phone, color: Colors.blue[900]),
                title: Text('089674577831'),
                onTap: () => _launchURL('tel:089674577831'),
              ),
              ListTile(
                leading: Icon(Icons.email, color: Colors.blue[900]),
                title: Text('devanoalfarizy04@gmail.com'),
                onTap: () => _launchURL('mailto:devanoalfarizy04@gmail.com'),
              ),
              ListTile(
                leading: Icon(Icons.camera_alt, color: Colors.blue[900]),
                title: Text('@itsodepth'),
                onTap: () => _launchURL('https://www.instagram.com/itsodepth'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
