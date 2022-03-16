


import 'package:house_rental_app/house_rental/domain/entities/note_entities.dart';
import 'package:house_rental_app/house_rental/domain/repository/firebase_repository.dart';

class DeleteNoteUseCase {
  final FirebaseRepository repository;

  DeleteNoteUseCase({this.repository});

  Future <void> call() async{
    return repository.deleteNote(NoteEntity());
  }
}