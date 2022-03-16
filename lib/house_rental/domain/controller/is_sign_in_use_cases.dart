

import 'package:house_rental_app/house_rental/domain/repository/firebase_repository.dart';

class IsSignInUseCase {
  final FirebaseRepository repository;

  IsSignInUseCase({this.repository});

  Future <bool> call() async{
    return repository.isSignIn();
  }
}