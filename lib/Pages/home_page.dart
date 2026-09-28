import 'package:flutter/material.dart';
import '../Data/animals_data.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Hewan'),
      ),
      body: ListView.builder(
        itemCount: dummyAnimals.length,
        itemBuilder: (context, index) {
          final animal = dummyAnimals[index];

          return Card(
            margin: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 6,
            ),
            child: ListTile(
              leading: Image.network(
                animal.image,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
              title: Text(
                animal.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                '${animal.type} • ${animal.habitat.join(', ')}',
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      animal: animal,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}