import 'dart:convert';
import 'package:lab4_pam/domain/models/barbershop.dart';

class LocalDataSource {
  List<Barbershop> loadBarbershops() {
    String jsonData = '''
   [
      {
        "title": "Alana Barbershop – Haircut massage & Spa",
        "distance": "Banguntapan (5km)",
        "rating": 4.5,
        "imageUrl": "assets/foto3.jpeg"
      },
      {
        "title": "Hercha Barbershop – Haircut & Styling",
        "distance": "Jalan Kaliurang (8km)",
        "rating": 5.0,
        "imageUrl": "assets/foto4.jpeg"
      },
      {
        "title": "Barberking – Haircut styling & massage",
        "distance": "Jogia Expo Centre (12km)",
        "rating": 4.5,
        "imageUrl": "assets/foto5.jpeg"
      },
      {
        "title": "Master piece Barbershop – Haircut styling",
        "distance": "Joga Expo Centre (2km)",
        "rating": 5.0,
        "imageUrl": "assets/foto2.png",
        "isHighlighted": true
      },
      {
        "title": "Varcity Barbershop Jogja ex The Varcher",
        "distance": "Condongcatur (10km)",
        "rating": 4.5,
        "imageUrl": "assets/foto6.jpeg"
      },
      {
        "title": "Twinsky Monkey Barber & Men Stuff",
        "distance": "Jl Taman Siswa (8km)",
        "rating": 5.0,
        "imageUrl": "assets/foto7.jpeg"
      },
      {
        "title": "Barberman – Haircut styling & massage",
        "distance": "J-Walk Centre (17km)",
        "rating": 4.5,
        "imageUrl": "assets/foto9.jpeg"
      }
    ]
    ''';

    List<dynamic> decodedData = json.decode(jsonData);
    return decodedData.map((item) => Barbershop(
      title: item['title'],
      distance: item['distance'],
      rating: item['rating'].toDouble(),
      imageUrl: item['imageUrl'],
      isHighlighted: item['isHighlighted'] ?? false,
    )).toList();
  }
}
