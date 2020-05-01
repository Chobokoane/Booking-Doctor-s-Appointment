import 'package:BookingAppointment/Categories.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesList extends StatelessWidget {
  //final int index;
 // const CategoriesList(this.index) ;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyCategories.length,
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        final categories = dummyCategories[index];

        return Container(
          width: 220.0,
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              image: DecorationImage(
                  image: AssetImage(
                    categories.urlImage,
                  ),
                  fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  width: 300.0,
                  height: 200.0,
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      gradient: LinearGradient(colors: [
                        Colors.transparent,
                        Colors.black12,
                        Colors.black54,
                      ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,

                      )
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 17.0,
                        backgroundImage: AssetImage(
                          categories.urlIcon,
                        ),
                        backgroundColor: Colors.deepOrange[100],
                      ),
                      SizedBox(height: 10.0,),
                      Container(
                        width: 150.0,
                        child: Text(categories.name,
                        style: GoogleFonts.roboto(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),),
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
        );
      },
    );
  }
}
