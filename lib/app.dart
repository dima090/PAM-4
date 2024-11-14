import 'package:flutter/material.dart';
import 'package:lab4_pam/prezentation/pages/barber_home_page.dart';
import 'package:lab4_pam/data/data_sources/local_data_source.dart';
import 'package:lab4_pam/data/repositories/barbershop_repository.dart';
import 'package:lab4_pam/domain/use_cases/get_barbershops_use_case.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localDataSource = LocalDataSource();
    final repository = BarbershopRepository(localDataSource);
    final getBarbershopsUseCase = GetBarbershopsUseCase(repository);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BarberHomePage(getBarbershopsUseCase: getBarbershopsUseCase),
    );
  }
}
