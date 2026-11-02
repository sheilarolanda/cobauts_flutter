import 'package:flutter/material.dart';
import '../repositories/buah_repository.dart';
import '../models/buah_model.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  final BuahRepository repository = BuahRepository();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final BuahModel buah = repository.getBuah();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Toko Buah Segar'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(16),
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset( // Menggunakan Image.asset
                buah.imageUrl,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.broken_image),
              ),
            ),
            title: Text(buah.nama),
            subtitle: Text(buah.harga),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(buah: buah),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}