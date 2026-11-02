import '../models/buah_model.dart';

class BuahRepository {
  BuahModel getBuah() {
    return BuahModel(
      nama: 'Alpukat Mentega',
      harga: 'Rp 25.000 / kg',
      deskripsi: 'Alpukat mentega pilihan dengan daging buah tebal dan lembut.',
      imageUrl: 'images/alpukat.jpg',
    );
  }
}