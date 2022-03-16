

import 'package:flutter/material.dart';
import 'package:house_rental_app/house_rental/domain/entities/note_entities.dart';
import 'package:house_rental_app/house_rental/domain/repository/firebase_repository.dart';

class UpDateNoteUseCase {
  final FirebaseRepository repository;

  UpDateNoteUseCase({this.repository});

  Future <void> call() async{
    return repository.updateNote(NoteEntity());
  }
}