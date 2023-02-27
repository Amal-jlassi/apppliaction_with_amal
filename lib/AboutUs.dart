import 'package:apppliaction_with_amal/Company.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  _AboutUsState createState() => _AboutUsState();

}
 class _AboutUsState extends State<AboutUs> {

   Widget AboutUs() {
     return Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       children: <Widget>[
         const Text(
           'Hi',
           style: TextStyle(
               color: Colors.black45,
               fontSize: 27,
               fontWeight: FontWeight.bold
           ),
         ),

         Container(

           alignment: Alignment.centerLeft,
           decoration: BoxDecoration(
               color: Colors.indigo.shade50,
               borderRadius: BorderRadius.circular(100),
               boxShadow: [
                 BoxShadow(
                     color: Colors.black,
                     blurRadius: 6,
                     offset: Offset(0, 2)
                 )
               ]


           ),
           height: 400,
           width: 500,

           child: TextFormField(
             minLines: 4,
             maxLines: 10,
             style: const TextStyle(
                 color: Colors.black
             ),
             decoration: const InputDecoration(
                 border: InputBorder.none,
                 contentPadding: EdgeInsets.only(top: 14),

                 hintText: 'Welcome Again in Developer Work'
                     ', we are two students in universite '
             ' we making this application for one objective '
             'who to connect developer and service providers in relation to '
             'find the right job . '
                 ,
                 hintStyle: TextStyle(
                     fontSize: 20,
                     color: Colors.black
                 )

             ),
           ),
         )

       ],
     );
   }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
         resizeToAvoidBottomInset: false,
         body: AnnotatedRegion<SystemUiOverlayStyle>(
           value: SystemUiOverlayStyle.light,
           child: GestureDetector(
             child: Stack(
               children: <Widget>[
                 Container(
                   height: double.infinity,
                   width: double.infinity,
                   decoration: const BoxDecoration(
                     image: DecorationImage(
                         image: AssetImage("img/img30.jpg"),
                         fit: BoxFit.cover
                     ),

                   ),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       const Text(
                         'About Us',
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 35,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                       const SizedBox(height: 30),
                       AboutUs(),

                     ],
                   ),

                 ),
               ],
             ),
           ),
         )
     );
   }
 }
