import 'package:lab4_pam/data/data_sources/local_data_source.dart'; // corectat importul
import 'package:lab4_pam/domain/models/barbershop.dart';

class BarbershopRepository {
  final LocalDataSource localDataSource;

  BarbershopRepository(this.localDataSource);

  List<Barbershop> getBarbershops() {
    return localDataSource.loadBarbershops();
  }
}
