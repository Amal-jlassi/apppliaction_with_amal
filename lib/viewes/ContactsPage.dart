import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'My_Drawer_Header.dart';
class ContactsPage extends StatefulWidget {
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Contacts Page"),
      ),
    );
  }
}
