

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:house_rental_app/house_rental/domain/entities/note_entities.dart';

class NoteModel extends NoteEntity{
  NoteModel ({
    final String noteId,
    final String note,
    final Timestamp time,
    final String uid,
}): super(
    noteId: noteId,
    note: note,
    time: time,
    uid: uid
  );

  factory NoteModel.fromSnapsnot(DocumentSnapshot documentSnapshot){
    return NoteModel(
      noteId: documentSnapshot.get("noteId"),
      note: documentSnapshot.get("note"),
      time: documentSnapshot.get("time"),
      uid: documentSnapshot.get("uid")
    );
  }
  Map<String, dynamic> toDocument(){
    return {
    "noteId" : noteId,
    "note": note,
    "time" : time,
    "uid":uid,
  };
  }


}