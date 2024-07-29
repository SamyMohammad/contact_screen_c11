import 'package:flutter/material.dart';
import 'package:flutter_assignment_3_c11/screens/contacts_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {ContactsScreen.routeName: (_) => const ContactsScreen()},
      // initialRoute:ContactsScreen.routeName ,
    );
  }
}
