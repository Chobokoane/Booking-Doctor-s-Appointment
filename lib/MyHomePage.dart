import 'package:BookingAppointment/Categories.dart';
import 'package:BookingAppointment/CategoriesDetails.dart';
import 'package:BookingAppointment/CategoriesList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
final int index;

  const MyHomePage({this.index}) ;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipPath(
                clipper: WaveClipperOne(),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 160.0,
                  padding: EdgeInsets.only(bottom: 50.0),
                  alignment: Alignment.bottomLeft,
                  color: Colors.grey,
                  child: Center(
                    child: Text(
                      " Doctor's Appointment:",
                      style: GoogleFonts.roboto(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Categories",style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 22.0,
                    ),),
                    SizedBox(height: 20.0,),
                    Container(
                      width: double.infinity,
                      height: 200.0,
                      child: CategoriesList(),
                    ),
                    SizedBox(height: 18.0,),
                    Text("What are looking for ",
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 22.0,
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Container(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildCard(
                              "images/clock.jpg",
                              0xFFF4DBC2,
                              "Doctor",
                              "Book an Appointment",
                              "50 Doctors Available",
                              context),
                          SizedBox(height: 10.0,),
                          buildCard("images/stethoscope.jpg",
                              0xFFB9D606,
                              "Test & CheckUp",
                              "Lab Test & CheckUp",
                              "43 Diognostic are available",
                              context),
                          SizedBox(height: 10.0,),
                          buildCard("images/videocall.jpg",

                              0xFFF3AC76,
                              "Event & Health Seminar",
                              "Video Conference",
                              "5 Conference coming up",
                              context),
                          SizedBox(height: 10.0,),
                          buildCard("images/index.png",
                              0xFFF,
                              "Chat & Video Call",
                              "Online Health Consult",
                              "Get Help with chat and video call",
                              context),
                          SizedBox(height: 10.0,),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
Widget buildCard(String urlIcon,int color, String categories,String name, String description, BuildContext context,){
final List index = [];
  return Card(
    elevation: 7,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16.0),
    ),
    child: InkWell(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 80.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 80.0,
              height: 80.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                color: Color(color),
              ),
              child: Center(
                child: Image.asset(
                  urlIcon,
                  width: 50.0,
                  height: 50.0,
                ),
              ),

            ),
            SizedBox(height: 20,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(categories,
                    style: GoogleFonts.roboto(
                      fontSize: 15.0,
                      color: Colors.black54,
                    ),),
                  Text(name,style: GoogleFonts.roboto(
                    fontSize: 18.0,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  )),
                  Text(description,style: GoogleFonts.roboto(
                    fontSize: 16.0,
                    color: Colors.black54,

                  )),
                ],
              ),
            )
          ],
        ),

      ),
      onTap: () {
//        Navigator.push(
//          context,
//          MaterialPageRoute(builder: (context) => CategoriesDetails()),
//        );
        Navigator.of(context).pushNamed(CategoriesDetails.routeName,
            arguments: {
              'id': detailList[index.length].id,
              'urlImage': detailList[index.length].urlImage,
              'imageUrl': detailList[index.length].urlImage,
              'colors': detailList[index.length].colors,
              'profession': detailList[index.length].profession,
              'appointment': detailList[index.length].appointment,
              'available': detailList[index.length].available,

            });


      },
    ),
  );
}
