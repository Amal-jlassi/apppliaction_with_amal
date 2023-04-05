 import 'package:apppliaction_with_amal/screens/Company.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
 import 'package:flutter/material.dart';
 import 'package:flutter/services.dart';

//
 class AboutUs extends StatefulWidget {
   const AboutUs({super.key});

   @override
   _AboutUsState createState() => _AboutUsState();

 }
  class _AboutUsState extends State<AboutUs> {
    @override
    Widget build(BuildContext context) {
      Size size = MediaQuery
          .of(context)
          .size;
      return SafeArea(
        child: Scaffold(
          bottomNavigationBar: CurvedNavigationBar(backgroundColor: Colors.grey,
            items: [

              GestureDetector(onTap : (){ Navigator.pushNamed(context, '/home');}, child: Icon(Icons. home)),
              GestureDetector (onTap : (){ Navigator.pushNamed(context, '/second');}, child :Icon(Icons.add)),
              GestureDetector (onTap : () { Navigator.pushNamed(context, '/home');}, child :Icon(Icons.search)),
            ],
          ) ,
          backgroundColor: Color(0xff5dc9b7),
          body: SizedBox(
            width: size.width,
            height: size.height,
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Container(
                    height: 250,
                    width: 600,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('img/img111.jpg'),
                      ),
                    ),
                  ),
                  Padding(
                    padding:   const EdgeInsets. only(top: 320.0),
                    child: Container(
                      width:
                      double.infinity,

                      decoration: const BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Welcome Back! \n"
                            'We are two students in university, qui cree cette application dans\n'
                                'le cas de realiser notre projet de fin detude .\n'
                                'hhqhxiijhqshxjjjjjjjjjjjjjjxbbxxbb \n'
                                'bhdhhhhdhhdhdhhd \n'
                                'hhdhhyzjzkoos\n'
                                'vwwbwhytueinx qlqoehrh \n'
                                'hdhhdh\n ',
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'OpenSans',
                                fontSize:16,
                                fontWeight: FontWeight.w600),
                          ),


                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }
  }

//
  /*  Widget AboutUs() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
       children: <Widget>[
         const Text(
          'Hi',
            style: TextStyle(
                color: Colors.black45,
                fontSize: 27,
               fontWeight: FontWeight.bold
           ),       ),
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
                     ', we are two students in university '
             ' we making this application for one objective '
            'who to connect developer and service providers in relation to '
             'find the right job . '
                    'THANK YOU FOR ATTENTION  '
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
                     gradient:LinearGradient(
                          begin: Alignment.topCenter,
                         end: Alignment.bottomCenter,
                        colors:[
                         Color(0xffd94dd9),
                         Color(0xffe5e4e2),
                        Color(0xffe5e4e2),
                        Color(0xffcd96cd),]
                     ),
                    ),
                      //image: DecorationImage(
                     //                          image: AssetImage("img/img30.jpg"),
                     //                          fit: BoxFit.cover
                      //                      ),



                    child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                         'About Us',      style: TextStyle(
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
*/