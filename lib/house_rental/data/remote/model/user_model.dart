

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:house_rental_app/house_rental/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    final String name,
    final String email,
    final String uid,
    final String status,
    final String password,
  }): super(
    name: name,
    email: email,
    uid: uid,
    status: status,
    password: password
  );

  factory UserModel.fromSnapshot (DocumentSnapshot documentSnapshot){
    return UserModel(
      name: documentSnapshot.get('status'),
      email: documentSnapshot.get('email'),
      uid: documentSnapshot.get('uid'),
      status: documentSnapshot.get('status'),
      password: documentSnapshot.get('password'),
    );
  }

  Map <String, dynamic> toDucument(){
    return {
      "name" : name,
      "email" :  email,
      "uid" : uid,
      "status" : status,
      "password": password,
    };
  }
}