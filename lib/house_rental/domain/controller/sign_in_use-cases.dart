

import 'package:house_rental_app/house_rental/domain/entities/user_entity.dart';
import 'package:house_rental_app/house_rental/domain/repository/firebase_repository.dart';

class SigninUseCase {
  final FirebaseRepository repository;

  SigninUseCase({this.repository});

  Future <void> call() async{
    return repository.signIn(UserEntity());
  }
}