import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesDetails extends StatelessWidget {
  static const routeName = '/categories-details';
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String,String>;
    final id = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Categories Details '),
        backgroundColor: Colors.grey,
      ),

     body: Hero(
       tag: id,

       child: Card(
         margin: const EdgeInsets.only(top: 20.0),
         elevation: 150,
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(16.0),
         ),
         child: InkWell(
           child: Container(

             width: MediaQuery.of(context).size.width,
             height: 110.0,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(

                   width: 120.0,
                   height: 120.0,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(14.0),
                   ),
                   child: Center(
                     child: Image.asset(
                       routeArgs['urlImage'],
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
                       Text(routeArgs['profession'],
                         style: GoogleFonts.roboto(
                           fontSize: 15.0,
                           color: Colors.black54,
                         ),),
                       Text(routeArgs['appointment'],style: GoogleFonts.roboto(
                         fontSize: 18.0,
                         color: Colors.black54,
                         fontWeight: FontWeight.w500,
                       )),
                       Text(routeArgs['available'],style: GoogleFonts.roboto(
                         fontSize: 16.0,
                         color: Colors.black54,

                       )),
                     ],
                   ),
                 )
               ],
             ),

           ),

         ),
       ),
     ),
    );
  }
}
