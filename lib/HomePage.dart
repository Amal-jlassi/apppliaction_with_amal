
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'My_Drawer_Header.dart';
import 'DashboardPage.dart';
import 'ContactsPage.dart';
import 'SettingsPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.dashboard;
  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.dashboard) {
      container = DashboardPage();
    } else if (currentPage == DrawerSections.contacts) {
      container = ContactsPage();
    } else if (currentPage == DrawerSections.settings) {
      container = SettingsPage();

    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color (0xff5dc9b7),
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
              child : Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(

                        height: 60,

                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              color: Colors.white,

                              borderRadius: BorderRadius.circular(40),),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          style: const TextStyle(
                              color: Colors.black
                          ),
                        ),),
                      const SizedBox(height:10),


                            Container(
                              height: 60,
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40),),


                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          style: const TextStyle(
                              color: Colors.black
                          ),
                        ),
              ),
                      const SizedBox(height:10),

                      Container(
                        height: 60,
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),),

                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          style: const TextStyle(
                              color: Colors.black
                          ),
                        ),
                      ),
                      const SizedBox(height:10),


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
        children: [
          menuItem(1, "Dashboard", Icons.dashboard_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, "Contacts", Icons.people_alt_outlined,
              currentPage == DrawerSections.contacts ? true : false),
          Divider(),
          menuItem(3, "Settings", Icons.settings_outlined,
              currentPage == DrawerSections.settings ? true : false),

        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
         // Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.contacts;
            } else if (id == 3) {
              currentPage = DrawerSections.settings;

            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dashboard,
  contacts,
  settings,

}