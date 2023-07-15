import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Kami'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tim Kelompok Flutter',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Kami adalah tim yang bersemangat dalam pengembangan aplikasi Flutter.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Anggota Tim:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '1. AlexFederico - 211110052',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '2. Nicholas Salvadore - 211110241',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '3. Febry Christiani Thomas - 211112550',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '4. Erick - 191111924',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.brown[200],
    );
  }
}
