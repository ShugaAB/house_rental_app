
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:house_rental_app/doctor_app/third_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}


class _FirstPageState extends State<FirstPage> {

  @override
  Widget build(BuildContext context) {
    SizedBox(height:20);
    return SafeArea(
      child:
      Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child:
          ListView(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            children: [
              _header(),
              _upcoming(context),
              SizedBox(height: 20),
              _services(),
              SizedBox(height: 20),
              //Row(),
              Container(
                height: 250,
                child:
                ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildCard(),
                    buildCard1(),
                    buildCard2(),
                    buildCard3(),
                    buildCard4(),
                  ],
                ),
              ),
            ],
          ),
        ),


      ),
    );
  }
}


Widget _header() {
  return Padding(
    padding: EdgeInsets.fromLTRB(25, 20, 15, 0),
    child:
    Expanded(
      child:Row(
          //mainAxisAlignment: MainAxisAlignment.space,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child:
              ClipOval(
                child: SizedBox.fromSize(
                  size: Size.fromRadius(20),
                  child: Image.asset('assets/pic1.jpeg', fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hello, Asap!', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                SizedBox(height: 7,),
                Text('How your feeling today', style: TextStyle(fontSize: 8)),
              ],
            ),

            Expanded(child: SizedBox(width: 150)),
            Icon(Icons.notifications, size: 18),
          ]
      ),
    ),
  );
}
Widget _upcoming(BuildContext context) {
  return Padding(
    padding: EdgeInsets.fromLTRB(25, 20, 15, 0),
    child:
    Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child:Text('Upcoming Appointment', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          ),
          SizedBox(height: 15),
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.teal,
                width: 2.0,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),

            child:Stack(
                children:[
                  Positioned(
                    top: 15,
                    left: 20,
                    child: Text('dr. Maman Suparman', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),),
                  SizedBox(height:10),
                  Positioned(
                    top: 45,
                    left: 20,
                    child:
                    Text('ENT Specialist', style: TextStyle(fontSize: 8), ),),
                  SizedBox(height:10),
                  Positioned(
                    top: 65,
                    left: 20,
                    child:Text('February, 16 2022 at 01:00 PM', style: TextStyle(fontSize: 10)),),
                  SizedBox(height:18),
                  Positioned(bottom: 25,
                    left: 20,
                    child: Container(
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.teal,
                      ),
                      child: Center(child:
                      TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdPage(),));
                          },
                          child: Text('call now', style: TextStyle(fontSize: 9, color: Colors.white)),),
                    ),
                  ),
                  ),
                  Positioned(
                      right: 35,
                      top: 35,
                      child:
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(38),
                          child: Image.asset('assets/photo-1582750433449-648ed127bb54.jpeg', fit: BoxFit.cover),
                        ),
                      ) )
                ]
            ),
          ),

        ]
    ),
  );
}
Widget _services() {
  return Padding(
    padding: EdgeInsets.fromLTRB(25, 10, 15, 0),
    child:
    Expanded(child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text('Our Services', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          ),
          SizedBox(width: 15),
          SizedBox(height: 15,),
          Row(
              children: [
                Column(
                    children: [
                      Container(
                        height: 65,
                        width:65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                        ),
                        child: Icon(Icons.person_outline_rounded, color: Colors.red),
                      ),
                      SizedBox(height: 5,),
                      Text('Doctor', style: TextStyle(fontSize: 10)),
                    ]
                ),
                Expanded(child: SizedBox(width: 15)),
                Column(
                    children: [
                      Container(
                        height: 65,
                        width:65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                        ),
                        child: Icon(Icons.house_sharp, color: Colors.yellow),
                      ),
                      SizedBox(height: 5,),
                      Text('Hospital', style: TextStyle(fontSize: 10)),
                    ]
                ),
                Expanded(child:SizedBox(width: 15)),
                Column(
                    children: [
                      Container(
                        height: 65,
                        width:65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                        ),
                        child: Icon(Icons.youtube_searched_for_outlined, color: Colors.purple),
                      ),
                      SizedBox(height: 5,),
                      Text('Search', style: TextStyle(fontSize: 10)),
                    ]
                ),
                Expanded(child: SizedBox(width: 15)),
                Column(
                    children: [
                      Container(
                        height: 65,
                        width:65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                        ),
                        child: Icon(Icons.grid_view, color: Colors.green),
                      ),
                      SizedBox(height: 5,),
                      Text('Others', style: TextStyle(fontSize: 10)),
                    ]
                ),

              ]
          )
        ]
    ),
    ),
  );
}

Widget buildCard() {
  return
    Padding(padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
      child:Container(
        height: 200,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          child:
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(72),
                    child: Image.asset('assets/photo-1579165466949-3180a3d056d5.jpeg', fit: BoxFit.cover),

                  ),
                ),
                SizedBox(height: 7),
                Text('dr Hudi Sadrajat', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
                SizedBox(height: 7),
                Text('ENT Doctor 1', style: TextStyle(fontSize: 10, color: Colors.teal)),
                SizedBox(height: 7),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.location_on_rounded, size: 10),
                      Text('4 Km', style: TextStyle( fontSize: 10)),
                    ],
                  ),
                ),
              ]
          ),
        ),
      ),
    );

}

Widget buildCard1() {
  return
    Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
      child:Container(
        height: 200,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          child:
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(72),
                    child: Image.asset('assets/photo-1612636321938-2a60d4febfae.jpeg', fit: BoxFit.cover),

                  ),
                ),
                SizedBox(height: 7),
                Text('dr Ibarahim Raphel', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
                SizedBox(height: 7),
                Text('ENT Doctor 2', style: TextStyle(fontSize: 10, color: Colors.teal)),
                SizedBox(height: 7),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.location_on_rounded, size: 10),
                      Text('34 Km', style: TextStyle( fontSize: 10)),
                    ],
                  ),
                ),
              ]
          ),
        ),
      ),
    );

}

Widget buildCard2() {
  return
    Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
      child:Container(
        height: 200,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          child:
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(72),
                    child: Image.asset('assets/photo-1612636322033-f48f76c34bab.jpeg', fit: BoxFit.cover),

                  ),
                ),
                SizedBox(height: 7),
                Text('dr Hudi Sadrajat', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
                SizedBox(height: 7),
                Text('ENT Doctor', style: TextStyle(fontSize: 10, color: Colors.teal)),
                SizedBox(height: 7),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.location_on_rounded, size: 10),
                      Text('4 Km', style: TextStyle( fontSize: 10)),
                    ],
                  ),
                ),
              ]
          ),
        ),
      ),
    );

}

Widget buildCard3() {
  return
    Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
      child:Container(
        height: 200,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          child:
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(72),
                    child: Image.asset('assets/photo-1622253692010-333f2da6031d.jpeg', fit: BoxFit.cover),

                  ),
                ),
                SizedBox(height: 7),
                Text('dr Hudi Sadrajat', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
                SizedBox(height: 7),
                Text('ENT Doctor', style: TextStyle(fontSize: 10, color: Colors.teal)),
                SizedBox(height: 7),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.location_on_rounded, size: 10),
                      Text('4 Km', style: TextStyle( fontSize: 10)),
                    ],
                  ),
                ),
              ]
          ),
        ),
      ),
    );

}

Widget buildCard4() {
  return
    Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
      child:Container(
        height: 200,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          child:
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(72),
                    child: Image.asset('assets/photo-1622902046580-2b47f47f5471.jpeg', fit: BoxFit.cover),

                  ),
                ),
                SizedBox(height: 7),
                Text('dr Hudi Sadrajat', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
                SizedBox(height: 7),
                Text('ENT Doctor', style: TextStyle(fontSize: 10, color: Colors.teal)),
                SizedBox(height: 7),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.location_on_rounded, size: 10),
                      Text('4 Km', style: TextStyle( fontSize: 10)),
                    ],
                  ),
                ),
              ]
          ),
        ),
      ),
    );

}





