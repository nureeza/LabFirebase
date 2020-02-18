import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';


class Firebase1 extends StatefulWidget {
   @override
  _Firebase1State createState() => _Firebase1State();
}

class _Firebase1State extends State<Firebase1>{

  FirebaseDatabase firebaseDatabase =FirebaseDatabase.instance;

@override
void initState(){
  super.initState();
  readData();


}

Future <void> readData()async{
  print('Read Data Work');

  DatabaseReference databaseReference=firebaseDatabase.reference().child('TestStudent');
  await databaseReference.once().then((DataSnapshot dataSnapshot){
    print('Data=>${dataSnapshot.value}');
  });
}
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: Text('Show Data'),
    ),
    body: Text('body'),
  );
}

}
