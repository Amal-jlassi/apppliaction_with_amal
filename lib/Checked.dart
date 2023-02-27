import 'package:apppliaction_with_amal/Company.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

 class Checked  extends StatefulWidget {
 // const Checked ({super.key});
 @override
  _CheckedState createState() => _CheckedState();

 }
class _CheckedState extends State<Checked> {
   // bool isCompany = false;
   // bool isDeveloper = false;
  Widget buildCompanyBtn() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: 200,
      height: 100,
      child:

      ElevatedButton(

         // // onPressed: () {},
         //  style: ElevatedButton.styleFrom(
         //
         //    primary: Color(0xffb784a7),
         //    // onPrimary: Colors.white,
         //    //           side: BorderSide(color: Colors.white54, width: 5),
         //  ),
          onPressed: () {},

          style: ButtonStyle(
            overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed))
                  return Colors.purple; //<-- SEE HERE
                return null; // Defer to the widget's default.
              },
            ),
          ),


          child:


          const Text(
            'Company',
            style: TextStyle(fontSize: 20),)

      ),




    );
  }
   Widget buildDeveloperBtn() {
     return Container(
       padding: const EdgeInsets.symmetric(vertical: 20),
       width: 200,
       height: 100,
       child:

       ElevatedButton(

           onPressed: () {},

           style: ButtonStyle(
             overlayColor: MaterialStateProperty.resolveWith<Color?>(
                   (Set<MaterialState> states) {
                 if (states.contains(MaterialState.pressed))
                   return Colors.purple; //<-- SEE HERE
                 return null; // Defer to the widget's default.
               },
             ),
           ),

           child:


           const Text(
             'Developer',
             style: TextStyle(fontSize: 20),)

       ),




     );
   }
//
//   Widget buildDeveloper() {
//     return Container(
//       alignment: Alignment.center,
//         decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(40),),
//
//     height: 40,
//       child: Row(
//         children: <Widget>[
//           Theme(
//             data: ThemeData(unselectedWidgetColor: Colors.white),
//
//             child: Checkbox(
//                 value: isDeveloper,
//                 checkColor: Colors.black,
//                 activeColor: Colors.black38,
//                 onChanged: (value) {
//                   setState(() {
//                     isDeveloper = value!;
//                   });
//                 }),
//           ),
//           const Text(
//             'Choose Developer ',
//             style: TextStyle(
//               color: Colors.black,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget buildCompany() {
//     return Container(
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(40),),
//
//       height: 40,
//       child: Row(
//         children: <Widget>[
//           Theme(
//             data: ThemeData(unselectedWidgetColor: Colors.white),
//             child: Checkbox(
//                 value: isCompany,
//                 checkColor: Colors.black,
//                 activeColor: Colors.black38,
//                 onChanged: (value) {
//                   setState(() {
//                     isCompany = value!;
//                   });
//                 }),
//           ),
//           const Text(
//             'Choose Company',
//             style: TextStyle(
//               color: Colors.black,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
   @override
  Widget build(BuildContext context){
   return Scaffold(
         body:AnnotatedRegion<SystemUiOverlayStyle>(
           value: SystemUiOverlayStyle.light,

           child: GestureDetector(
            child:Stack(

              children:<Widget>[
                Container(
                   height: double.infinity,
                   width :double.infinity,
                   decoration:const BoxDecoration(
                     image: DecorationImage(
                        image: AssetImage("img/img30.jpg"),
                        fit: BoxFit.cover
                    ),

                   ),
                  child: Column(
     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                     const Text('User Check!',
                         style:TextStyle(
                           color: Colors.white,
                           fontSize: 40,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                     const SizedBox(height: 50),
                      buildCompanyBtn(),
                      const SizedBox(height: 30),
                      buildDeveloperBtn(),




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