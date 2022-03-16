


import 'package:house_rental_app/house_rental/domain/entities/note_entities.dart';
import 'package:house_rental_app/house_rental/domain/repository/firebase_repository.dart';

class GetNoteUseCase {
  final FirebaseRepository repository;

  GetNoteUseCase({this.repository});

   Stream<List<NoteEntity>> call(String uid) {
     return repository.getNotes(uid);
   }
  }
