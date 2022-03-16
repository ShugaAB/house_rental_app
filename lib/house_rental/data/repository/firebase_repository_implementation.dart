

import 'package:house_rental_app/house_rental/data/remote/data_sources/firebase_remote_data_source.dart';
import 'package:house_rental_app/house_rental/domain/entities/note_entities.dart';
import 'package:house_rental_app/house_rental/domain/entities/user_entity.dart';
import 'package:house_rental_app/house_rental/domain/repository/firebase_repository.dart';

class FirebaseRepositoryImplemetation extends FirebaseRepository {
  final FirebaseRemoteDataSource firebaseRemoteDataSource;

  FirebaseRepositoryImplemetation({this.firebaseRemoteDataSource});
  @override
  Future<void> addNewNote(NoteEntity note) async{
    return firebaseRemoteDataSource.addNewNote(note);
  }

  @override
  Future<void> deleteNote(NoteEntity note) async{
    return firebaseRemoteDataSource.deleteNote(note);
  }

  @override
  Future<void> getCreateCurrentUser(UserEntity user) async{
    return firebaseRemoteDataSource.getCreateCurrentUser(user);
  }

  @override
  Future<String> getCurrentId() async{
    return firebaseRemoteDataSource.getCurrentId();
  }

  @override
  Stream<List<NoteEntity>> getNotes(String uid) {
    return firebaseRemoteDataSource.getNotes(uid);
  }

  @override
  Future<bool> isSignIn() async{
    return firebaseRemoteDataSource.isSignIn();
  }

  @override
  Future<void> signIn(UserEntity user) async{
    return firebaseRemoteDataSource.signIn(user);
  }

  @override
  Future<void> signOut() async{
    return firebaseRemoteDataSource.signOut();
  }

  @override
  Future<void> signUp(UserEntity user) async{
   return firebaseRemoteDataSource.signUp(user);
  }

  @override
  Future<void> updateNote(NoteEntity note) async{
   return firebaseRemoteDataSource.updateNote(note);
  }

}