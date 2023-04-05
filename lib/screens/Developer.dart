import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Developer extends StatefulWidget {
  const Developer({super.key});

  @override
  DeveloperState createState() => DeveloperState();
}

class DeveloperState extends State<Developer>{
  List<String>? items;
  String? initValue;
  void initState() {
    // TODO: implement initState
    items = [
      'select skills',
      'flutter',
      'Laravel',
      'Angular',
      'React JS',
      'Java',
    ];
    initValue = items![0] ;
    super.initState();
  }

  Widget buildFramework() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Framework',
            style: TextStyle(
                color: Colors.white70,
                fontSize: 27,
                fontWeight: FontWeight.bold
            ),
          ),
          Container(height:60,
            width: 500,
            child: Column(
              children: [DropdownButton(
                value: initValue,
                icon:  Icon(Icons.keyboard_arrow_down),
                items: items!.map((item)
                {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    print("newValue is : "+newValue!);
                    initValue = newValue!;
                  });
                },
              ),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  const BoxShadow(
                      color: Colors.black,
                      blurRadius: 6,
                      offset: Offset(0, 2)
                  )
                ]
            ),
          ), ] );
  }
  Widget buildWorkType(){

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        const Text(
          'Work Type',
          style: TextStyle(
              color: Colors.white70,
              fontSize:27,
              fontWeight: FontWeight.bold
          ),
        ),

        Container(
          alignment: Alignment.centerLeft,
          decoration:BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                const BoxShadow(
                    color: Colors.black,
                    blurRadius: 6,
                    offset: Offset(0, 2)
                )
              ]


          ),
          height: 60,
          child:TextFormField(
            style: const TextStyle(
                color: Colors.black
            ),
            decoration:  const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.work,
                  color: Color(0xffb784a7),
                ),
                hintText: 'Work Type',
                hintStyle: TextStyle(
                    color: Colors.black38
                )

            ),
          ),
        )

      ],
    );
  }
  Widget buildRegion(){

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        const Text(
          'Place',
          style: TextStyle(
              color: Colors.white70,
              fontSize:27,
              fontWeight: FontWeight.bold
          ),
        ),

        Container(
          alignment: Alignment.centerLeft,
          decoration:BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                const BoxShadow(
                    color: Colors.black,
                    blurRadius: 6,
                    offset: Offset(0, 2)
                )
              ]
    ),


          height: 60,

          child:TextFormField(
            keyboardType:TextInputType.text,
            style: const TextStyle(
                color: Colors.black
            ),
            decoration:  const InputDecoration(
                border: InputBorder.none,

                prefixIcon: Icon(
                  Icons.maps_home_work,
                  color: Color(0xffb784a7),
                ),
                hintText: 'Place',
                hintStyle: TextStyle(
                    color: Colors.black38
                )

            ),
          ),
        )

      ],
    );
  }
  Widget buildSearchBtn(){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: 200,
      height: 100,
      child:

      ElevatedButton(

          onPressed: () {},
          style: ElevatedButton.styleFrom(

            primary: Color(0xffb784a7),
            // onPrimary: Colors.white,
            //           side: BorderSide(color: Colors.white54, width: 5),
          ),


          child:


          const Text(
            'Search',
            style: TextStyle(fontSize: 20),)

      ),




    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
            child:Stack(
              children:<Widget>[
                Container(
                  height: double.infinity,
                  width : double.infinity,
                  decoration:const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img/img30.jpg"),
                        fit: BoxFit.cover
                    ),

                  ),
              child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Developer Space',
                        style:TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 50),
                      buildFramework(),
                      const SizedBox(height: 50),

                      buildWorkType() ,
                      const SizedBox(height: 50),

                      buildRegion(),

                      const SizedBox(height: 30),

                      buildSearchBtn(),
                    ],
                  ),
                ),
                ),
              ],
            ),
          ),
        )
    );
  }
}