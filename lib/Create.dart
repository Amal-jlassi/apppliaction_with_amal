import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Create extends StatefulWidget {
  const Create({super.key});
  @override
  CreateState createState() => CreateState();
}
class CreateState extends State<Create>{
  List<String>? items;
  String? initValue;

  @override
  void showDatepiker(){
    showDatePicker(context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1980),
      lastDate: DateTime(2011),
    );
  }
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
  Widget Name(){
    return Column(
      children: <Widget> [
        const Text(
          'Name',
          style: TextStyle(
              color: Colors.white70,
              fontSize:18,
              fontWeight: FontWeight.bold
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration:  BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    blurRadius: 6,
                    offset: Offset(0, 2)
                )
              ]
          ),
          height: 60,
          child: TextFormField(
            style: const TextStyle(
                color: Colors.black
            ),
            decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.person,
                  color: Color(0xffb784a7),
                ),
                hintText:'Name',
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),
          ),
        )
      ],
    );
  }
  Widget emailField(){

    return Column(

      children: <Widget> [
        const Text(
          'Email',
          style: TextStyle(
              color: Colors.white70,
              fontSize:20,
              fontWeight: FontWeight.bold
          ),
        ),

        Container(

          alignment: Alignment.center,
          decoration:  BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    blurRadius: 6,
                    offset: Offset(0, 2)
                )
              ]


          ),
          height: 60,
          child: TextFormField(
            keyboardType:TextInputType.emailAddress,
            style: const TextStyle(
                color: Colors.black
            ),
            decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xffb784a7),
                ),
                hintText:'Email',
                hintStyle: TextStyle(
                    color: Colors.black38
                )

            ),
          ),
        )

      ],
    );
  }

  Widget date_of_birth(){
    return Column(
      children: <Widget> [
        const Text(
          'Date of Birth',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ), ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black,
                  blurRadius: 6,
                  offset: Offset(0, 2)
              ),],),
          height: 60,
          child: TextFormField(
              keyboardType:TextInputType.datetime,
              style: const TextStyle(
                  color: Colors.black
              ),
              decoration:  const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'date of Birth',
                  prefixIcon: Icon(
                    Icons.date_range_outlined,
                    color: Color(0xffb784a7),
                  ),
                  hintStyle: TextStyle(
                      color: Colors.black38
                  )
              ),
              onTap:(){
                showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1980),
                    lastDate: DateTime(2011) as DateTime) ;
              }
          ),
        ),],
    );
  }
  Widget contact(){
    return Column(
      children: <Widget> [
        const Text(
          'Contact',
          style: TextStyle(
              color: Colors.white70,
              fontSize:20,
              fontWeight: FontWeight.bold
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black,
                    blurRadius: 6,
                    offset: Offset(0, 2)
                )
              ]
          ),
          height: 60,
          child: TextFormField(
            keyboardType:TextInputType.number,
            style: const TextStyle(
                color: Colors.black
            ),
            decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.phone_android,
                  color: Color(0xffb784a7),
                ),
                hintText:'Phone Number',
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),
          ),
        )
      ],
    );
  }
  Widget buildFramework() {
    return Column(
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
  Widget buildCreate() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width : 150,
      height: 100,
      child: ElevatedButton(
          onPressed:() {
            print("Create Pressed");
            Navigator.pushNamed(context, '/home');
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.purple,

          ),
          child: const Text(
            'Create',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )

      ),
    );
  }
  Widget buildNext() {
    return Column(
        children:[
          Container(
            padding: EdgeInsets.all(45),
            alignment: Alignment.bottomCenter,
            child:IconButton(onPressed: (){},
              icon: Icon( Icons.add) ,color: Colors.blue.shade600,focusColor:Colors.cyanAccent,iconSize: 50,),
          ),
          BottomAppBar(
              shape: CircularNotchedRectangle(),
              notchMargin: 20,
              child: Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children:<Widget> [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            MaterialButton(onPressed: () {},
                              minWidth: 40,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.dashboard_customize,color:Colors.grey,),
                                  Text(
                                      "Dashboard",
                                      style: TextStyle(color: Colors.grey)
                                  )
                                ],
                              ),
                            ),
                            MaterialButton(onPressed: () {},
                              minWidth: 40,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.face,color:Colors.grey,),
                                  Text(
                                      "profil",
                                      style: TextStyle(color: Colors.grey)
                                  )
                                ],
                              ),
                            ),
                            MaterialButton(onPressed: () {},
                              minWidth: 40,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.settings,color:Colors.grey,),
                                  Text(
                                      "setting",
                                      style: TextStyle(color: Colors.grey)
                                  )
                                ],
                              ),
                            ),
                            MaterialButton(onPressed: () {},
                              minWidth: 40,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.search,color:Colors.grey,),
                                  Text(
                                      "search",
                                      style: TextStyle(color: Colors.grey)
                                  )
                                ],
                              ),
                            ),
                          ]
                      )
                    ],
                  )

              )
          ),

        ]);
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
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("img/img30.jpg"),
                      fit: BoxFit.cover
                  ),

                ),
                child: SingleChildScrollView(
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  <Widget>[
                    const Text(
                      'Create Account',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height:30),
                    Name(),
                    const SizedBox(height:10),
                    emailField(),
                    const SizedBox(height:10),
                    date_of_birth(),
                    const SizedBox(height:10),
                    contact(),
                    const SizedBox(height: 10),
                    buildFramework(),
                    buildCreate(),
                    const SizedBox(height: 10),
                    buildNext()
                  ],
                ),
                ),
              ),
            ],
          ),
        ),
      ),);
  }
}