import 'package:flutter/material.dart';
import '../../domain/models/barbershop.dart';

class BarbershopCard extends StatelessWidget {
  final Barbershop barbershop;

  BarbershopCard({required this.barbershop});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(barbershop.imageUrl),
        ),
        title: Text(barbershop.title),
        subtitle: Text(barbershop.distance),
        trailing: Text(barbershop.rating.toString()),
      ),
    );
  }
}
