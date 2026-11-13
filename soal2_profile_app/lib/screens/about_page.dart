import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Saya'),
        backgroundColor: Colors.greenAccent,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          Text(
            'Hobi dan Keahlian',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Card(
            child: ListTile(
              leading: Icon(Icons.music_note),
              title: Text('Dengar musik 24 jam'),
              subtitle: Text('Hobi'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.brush),
              title: Text('Menggambar dan Melukis'),
              subtitle: Text('Keahlian'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.sports_soccer),
              title: Text('Maen Bola'),
              subtitle: Text('Hobi'),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Riwayat Pendidikan',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Card(
            child: ListTile(
              leading: Icon(Icons.school),
              title: Text('SMK'),
              subtitle: Text('Tahun 2019 - 2022'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.school),
              title: Text('SMP'),
              subtitle: Text('Tahun 2016 - 2019'),
            ),
          ),
        ],
      ),
    );
  }
}
