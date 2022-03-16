//import 'package:dribble_app/dribble_app_folder/first_dribble1_app.dart';
//import 'package:dribble_app/dribble_app_folder/first_dribble_app.dart';
//import 'package:dribble_app/dribble_app_f
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:house_rental_app/doctor_app/third_page.dart';

import 'first_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
          children: [
            Container(
              child: Padding(padding:EdgeInsets.fromLTRB(15, 40, 15, 0),child:
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: SizedBox.fromSize(
                      size: Size.fromHeight(297),

                      child:  Image.asset('assets/pic1.jpeg', fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    left: 15,
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade500,
                      ),
                      child: Center(
                        child: Material(child: IconButton(icon: Icon(Icons.arrow_back_ios),
                         onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPage(),));
                          },
                    ),
                  ),
                  )
                  )
                  )
                ],
              ),

              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text('dr Dimas Adi Nugroho', style: TextStyle(fontSize: 18, color: Colors.black, decoration: TextDecoration.none, fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 10),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.shopping_bag, size: 15, color: Colors.teal),
                              Text('8 years', style: TextStyle(fontSize: 12, color: Colors.black, decoration: TextDecoration.none),),
                            ],
                          ),
                        ),
                        SizedBox(width: 30),
                        Container(child: Row(
                          children: [
                            Icon(Icons.add_location, size: 15, color: Colors.teal),
                            Text('Heart Specialist', style: TextStyle(fontSize: 12, color: Colors.black, decoration: TextDecoration.none),),
                          ],
                        ),),
                        SizedBox(width: 30),
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.star, size: 15, color: Colors.teal),
                              Text('4.5', style: TextStyle(fontSize: 12, color: Colors.black, decoration: TextDecoration.none),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hospital Information', style: TextStyle(fontSize: 18, color: Colors.black, decoration: TextDecoration.none, fontWeight: FontWeight.bold),),
                    SizedBox(height: 10),
                    Text('Rumuah NJ Solo R, Adi Sucipea No 118 Jajar', style: TextStyle(fontSize: 12, color: Colors.black, decoration: TextDecoration.none),),
                    SizedBox(height: 10),
                    Text('Lawayan, Sourakarta 57144', style: TextStyle(fontSize: 12, color: Colors.black, decoration: TextDecoration.none),),
                  ]
              ),
            ),


    SizedBox(height: 25),
            Padding(padding: EdgeInsets.symmetric(horizontal: 25),
              child:
              Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Expertise Skill', style: TextStyle(fontSize: 18, color: Colors.black, decoration: TextDecoration.none, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Container(
                              height: 40,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade200,
                              ),
                              child: Center( child: Text('Heart', style: TextStyle(fontSize: 10, color: Colors.black, decoration: TextDecoration.none),),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 40,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade200,
                              ),
                              child: Center( child:Text('Vascular', style: TextStyle(fontSize: 10, color: Colors.black, decoration: TextDecoration.none),),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey.shade200,
                              ),
                              child:Center( child: Text('Heart Surgery', style: TextStyle(fontSize: 10, color: Colors.black, decoration: TextDecoration.none),),
                              ),
                            ),
                          ]
                      ),
                SizedBox(height: 10),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey.shade200,
                              ),
                              child: Center( child:Text('Diaggnostic Radiology', style: TextStyle(fontSize: 10, color: Colors.black, decoration: TextDecoration.none),),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 40,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey.shade200,
                              ),
                              child: Center( child: Text('Aneschology', style: TextStyle(fontSize: 10, color: Colors.black, decoration: TextDecoration.none),),
                              ),
                            ),
                            SizedBox(width: 30),

                          ]
                      ),



                    ]
                ),
              ),
              //TextButton(onPressed: onPressed, child: child)
            ),
            SizedBox(height: 20),
   Container(
              height: 65,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.grey.shade200,
              ),
              child:  TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdPage()),);
                        },
                        style: TextButton.styleFrom(
                          primary: Colors.teal,
                        ),
                        child: Center(child:Text('Make Appointment', style: TextStyle(fontSize: 20),)),
                      ),
                    ),
                 // ),
                ],
   ),
    );
  }
}



