import '../models/barbershop.dart';
import '../../data/repositories/barbershop_repository.dart';

class GetBarbershopsUseCase {
  final BarbershopRepository repository;

  GetBarbershopsUseCase(this.repository);

  List<Barbershop> execute() {
    return repository.getBarbershops();
  }
}
