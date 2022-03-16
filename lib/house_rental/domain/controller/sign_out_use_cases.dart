

import 'package:house_rental_app/house_rental/domain/repository/firebase_repository.dart';

class SignoutUseCase {
  final FirebaseRepository repository;

  SignoutUseCase({this.repository});

  Future <void> call() async{
    return repository.signOut();
  }
}