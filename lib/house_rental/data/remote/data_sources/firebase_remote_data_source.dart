

import 'package:house_rental_app/house_rental/domain/entities/note_entities.dart';
import 'package:house_rental_app/house_rental/domain/entities/user_entity.dart';

abstract class FirebaseRemoteDataSource {
  Future <bool> isSignIn();
  Future <void> signIn(UserEntity user);
  Future <void> signUp(UserEntity user);
  Future <void> signOut();
  Future <String> getCurrentId();
  Future <void> getCreateCurrentUser(UserEntity user);
  Future <void> addNewNote(NoteEntity note);
  Future <void> updateNote(NoteEntity note);
  Future <void> deleteNote(NoteEntity note);
  Stream <List<NoteEntity>> getNotes(String uid);
}