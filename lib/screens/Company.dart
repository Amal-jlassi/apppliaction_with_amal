import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Company extends StatefulWidget {
  const Company({super.key});

  @override
  CompanyState createState() => CompanyState();
}

class CompanyState extends State<Company> {
  List<String>? items;
  List<String>? itemsWork;
  String? initValue;
  String? initValue_Work;
  @override
  void initState() {
    // TODO: implement initState
    items = [
      'select Framework',
      'flutter',
      'Laravel',
      'Angular',
      'React JS',
      'Java',
    ];
    itemsWork = [
      'select Work Type',
      'CDD',
      'CDI',
      'FREELANCE',
      'STAGE PRE-EMBAUCHE',
    ];
     initValue = itemsWork![0];

    initValue = items![0] ;
    super.initState();
  }


  Widget buildCompany() {

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Name Company',
            style: TextStyle(
                color: Colors.white70,
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
          ),

          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,

                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  const BoxShadow(
                      color: Colors.black,
                      blurRadius: 6,
                      offset: Offset(0, 2)
                  )
                ]

            ),


            height: 60,

            child: TextFormField(
              keyboardType:TextInputType.text,
              style: const TextStyle(
                  color: Colors.black
              ),
              decoration: const InputDecoration(
                  border: InputBorder.none ,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Color(0xffb784a7),
                  ),
                  hintText: 'Name Company ',
                  hintStyle: TextStyle(
                      color: Colors.black38
                  )
              ),

            ),
          )
        ]
    );
  }
  Widget buildContact() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Contact',
          style: TextStyle(
              color: Colors.white70,
              fontSize: 27,
              fontWeight: FontWeight.bold
          ),
        ),

        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                const BoxShadow(
                    color: Colors.black,
                    blurRadius: 6,
                    offset: Offset(0, 2)
                )
              ]


          ),
          height: 60,


          child: TextFormField(
            keyboardType: TextInputType.text,
            style: const TextStyle(
                color: Colors.black
            ),
            decoration: const InputDecoration(
                border: InputBorder.none,

                prefixIcon: Icon(
                  Icons.maps_home_work,
                  color: Color(0xffb784a7),
                ),
                hintText: 'Email',
                hintStyle: TextStyle(
                    color: Colors.black38
                )

            ),
          ),
        )

      ],
    );
  }

  Widget buildDescription() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Description ',
          style: TextStyle(
              color: Colors.white70,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        ),

        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                const BoxShadow(
                    color: Colors.black,
                    blurRadius: 6,
                    offset: Offset(0, 2)
                )
              ]


          ),
          height: 60,
          child: TextFormField(
            minLines: 5,
            maxLines: 10,
            style: const TextStyle(
                color: Colors.black
            ),
            decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.work,
                  color: Color(0xffb784a7),
                ),
                hintText: 'Description about job ',
                hintStyle: TextStyle(
                    color: Colors.black38
                )

            ),
          ),
        )

      ],
    );
  }



  Widget buildWorkType() {

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Work Type',
            style: TextStyle(
                color: Colors.white70,
                fontSize:20,
                fontWeight: FontWeight.bold
            ),
          ),

          Container(
            child: Column(
              children: [DropdownButton(

                // Initial Value
                value: itemsWork![0],

                // Down Arrow Icon
                icon:  Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: itemsWork!.map((item)
                {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    initValue = newValue!;

                  });
                },
              ),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  const BoxShadow(
                      color: Colors.black,
                      blurRadius: 6,
                      offset: Offset(0, 2)
                  )
                ]
            ),
            height:60, width:double.infinity,

          ),
        ]

    );
  }


  Widget buildFramework() {

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Framework',
            style: TextStyle(
                color: Colors.white70,
                fontSize: 20,
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
  Widget buildAddBtn() {
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
            'Add',
            style: TextStyle(fontSize: 20),)

      ),




    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
            child: Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img/img30.jpg"),
                        fit: BoxFit.cover
                    ),


                  ),


                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Company Space',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height:10),
                       buildCompany(),
                      const SizedBox(height: 10),
                      buildContact(),
                      const SizedBox(height: 10),
                      buildDescription(),
                      const SizedBox(height: 10),
                      buildWorkType(),
                      const SizedBox(height: 10),
                      buildFramework(),

                      const SizedBox(height: 30),
                      buildAddBtn(),
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