import 'package:flutter/material.dart';

import '../Models/animals.dart';

class DetailPage extends StatelessWidget {
  final Animal animal;

  const DetailPage({super.key, required this.animal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(animal.name)),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // FOTO HEWAN
            Image.network(
              animal.image,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 20),

            // NAMA HEWAN
            Text(
              animal.name,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            // TIPE HEWAN
            Text(animal.type, style: const TextStyle(fontSize: 18)),

            const SizedBox(height: 20),

            // BERAT
            Text(
              'Berat',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),

            Text('${animal.weight} kg', style: const TextStyle(fontSize: 16)),

            const SizedBox(height: 15),

            // TINGGI
            Text(
              'Tinggi',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),

            Text('${animal.height} cm', style: const TextStyle(fontSize: 16)),

            const SizedBox(height: 15),

            // HABITAT
            Text(
              'Habitat',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),

            Text(
              animal.habitat.join(', '),
              style: const TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 15),

            // ACTIVITIES
            Text(
              'Activities',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),

            Text(
              animal.activities.join(', '),
              style: const TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 30),

            // TOMBOL KEMBALI
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Kembali ke Home'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
