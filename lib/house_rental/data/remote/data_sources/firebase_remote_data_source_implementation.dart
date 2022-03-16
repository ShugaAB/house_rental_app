

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:house_rental_app/house_rental/data/remote/data_sources/firebase_remote_data_source.dart';
import 'package:house_rental_app/house_rental/data/remote/model/note_model.dart';
import 'package:house_rental_app/house_rental/domain/entities/note_entities.dart';
import 'package:house_rental_app/house_rental/domain/entities/user_entity.dart';

class FirebaseRemoteDataSourceImplementation implements FirebaseRemoteDataSource{

  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firebaseFirestore;

  FirebaseRemoteDataSourceImplementation(
      {this.firebaseAuth, this.firebaseFirestore});

  @override
  Future<void> addNewNote(NoteEntity noteEntity) async{
    final noteCollectionRef = firebaseFirestore.collection("users").doc(noteEntity.uid).collection("notes");

    final noteId = noteCollectionRef.doc().id;

    noteCollectionRef.doc(noteId).get().then((note) {

      final newNote = NoteModel(
        uid: noteEntity.uid,
        noteId: noteId,
        note: noteEntity.note,
        time: noteEntity.time
       ).toDocument();
      if(!note.exists){

      }
      return;
    }
    );
  }

  @override
  Future<void> deleteNote(NoteEntity note) {
    // TODO: implement deleteNote
    throw UnimplementedError();
  }

  @override
  Future<void> getCreateCurrentUser(UserEntity user) {
    // TODO: implement getCreateCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<String> getCurrentId() {
    // TODO: implement getCurrentId
    throw UnimplementedError();
  }

  @override
  Stream<List<NoteEntity>> getNotes(String uid) {
    // TODO: implement getNotes
    throw UnimplementedError();
  }

  @override
  Future<bool> isSignIn() {
    // TODO: implement isSignIn
    throw UnimplementedError();
  }

  @override
  Future<void> signIn(UserEntity user) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<void> signUp(UserEntity user) {
    // TODO: implement signUp
    throw UnimplementedError();
  }

  @override
  Future<void> updateNote(NoteEntity note) {
    // TODO: implement updateNote
    throw UnimplementedError();
  }

}