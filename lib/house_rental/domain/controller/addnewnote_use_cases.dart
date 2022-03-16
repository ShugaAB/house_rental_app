

import 'package:house_rental_app/house_rental/domain/entities/note_entities.dart';
import 'package:house_rental_app/house_rental/domain/repository/firebase_repository.dart';

class AddNewNoteUseCase {
  final FirebaseRepository repository;

  AddNewNoteUseCase({this.repository});

  Future <void> call() async{
    return repository.addNewNote(NoteEntity());
  }
}