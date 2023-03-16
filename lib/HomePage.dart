
import 'package:apppliaction_with_amal/AboutUs.dart';
import 'package:apppliaction_with_amal/RecherchePage.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'My_Drawer_Header.dart';
import 'DashboardPage.dart';
import 'ContactsPage.dart';
import 'SettingsPage.dart';
import 'RecherchePage.dart';
import 'AboutUs.dart';
import 'ProfilePage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.Dashboard;
  var listDropDown = [
  'profile',
  'dashboard',
  'search',
  'about_us',
  'settings',

];
  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.Profile) {
      container = ProfilePage();
    }else if (currentPage == DrawerSections.Dashboard) {
      container = DashboardPage();
    } else if (currentPage == DrawerSections.Search) {
      container = RecherchePage();

    } else if (currentPage == DrawerSections.About_us) {
      container = AboutUs();
    } else if (currentPage == DrawerSections.Settings) {
      container = SettingsOnePage();
    }
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(backgroundColor: Colors.grey,
        items: [

        GestureDetector(onTap : (){ Navigator.pushNamed(context, '/home');}, child: Icon(Icons. home)),
         GestureDetector (onTap : (){ Navigator.pushNamed(context, '/second');}, child :Icon(Icons.add)),
          GestureDetector (onTap : () { Navigator.pushNamed(context, '/home');}, child :Icon(Icons.search)),
      ],
      ) ,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Home"),
      ),
      body: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) =>Container(
          width : MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical:30.0 ),
          child: Card(
            elevation: 5.0,
              color: Color (0xff5dc9b7),
              shape: RoundedRectangleBorder(
                borderRadius:  BorderRadius.circular(10.0),

              ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child : const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //Container(
                      //
                      //                         height: 60,
                      //
                      //                           alignment: Alignment.centerLeft,
                      //                           decoration: BoxDecoration(
                      //                               color: Colors.white,
                      //
                      //                               borderRadius: BorderRadius.circular(40),),
                      //                         child: TextFormField(
                      //                           keyboardType: TextInputType.text,
                      //                           style: const TextStyle(
                      //                               color: Colors.black
                      //                           ),
                      //                         ),),
                      SizedBox(height:10),
                       Text('socité :  flesk \n'
                          ' description de travail : developpeur back-end: laravel \n'
                           'adresse: Monastir \n'
                          'type de travail: CDD\n '),
                    ],

                  )
                ],
              )
            )

          )
        )

      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );

  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children:

          listDropDown.map((e) {
            return menuItem( 1 , e , Icons.person,
                currentPage == DrawerSections.Profile ? true : false);


          }).toList(),

         /* menuItem(1, "Profile", Icons.person,
              currentPage == DrawerSections.profile ? true : false),
          menuItem(2, "Dashboard", Icons.dashboard_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(3, "Search", Icons.search,
              currentPage == DrawerSections.search ? true : false),
          menuItem(4, "About Us", Icons.people_alt_outlined,
              currentPage == DrawerSections.about_us ? true : false),
          menuItem(5, "Settings", Icons.settings_outlined,
              currentPage == DrawerSections.settings ? true : false),*/


      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
           // Navigator.pop(context, '/aboute');
         // setState(() {
            if (id == 1) {
              currentPage = DrawerSections.Profile;
            } else if (id == 2) {
              currentPage = DrawerSections.Dashboard;
            } else if (id == 3) {
              currentPage = DrawerSections.Search;
            } else if (id == 4) {
              currentPage = DrawerSections.About_us;
            } else if (id == 5) {
              currentPage = DrawerSections.Settings;

            }
         // });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
            child:Column(
            children: [
              Row(
                children: [
                  Container(
                    child: Icon(
                      icon,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    child: TextButton(onPressed:(){Navigator.pushNamed(context, '/profile');}, child: Text(
                      title,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16),
                    ),

                    ),),
                ],
              ),

            /*  Row(
                children: [
                  Container(

                    child: TextButton(onPressed:(){Navigator.pushNamed(context, '/dash');}, child: Text(
                      "dashboard",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16),
                    ),
                    ),
                  ),
                ],
              ),*/
            /*  Container(

                child: TextButton(onPressed:(){Navigator.pushNamed(context, '/aboute');}, child: Text(
                  "aboutus",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16),
                ),
                ),
              ),*/
            /*  Container(

                child: TextButton(onPressed:(){Navigator.pushNamed(context, '/profil');}, child: Text(
                  "profile",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16),
                ),
                ),
              ),*/

          ],),
        ),
      ),
    );
  }
}
enum DrawerSections {
  Profile,
  Dashboard,
  Search,
  About_us,
  Settings,

}