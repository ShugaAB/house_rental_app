

import 'package:house_rental_app/house_rental/domain/repository/firebase_repository.dart';

class GetCurrentIdUseCase {
  final FirebaseRepository repository;

  GetCurrentIdUseCase({this.repository});

  Future <String> call() async{
    return repository.getCurrentId();
  }
}