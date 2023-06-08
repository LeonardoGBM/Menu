import 'package:flutter/material.dart';

class Page404 extends StatefulWidget {
  const Page404({super.key});

  @override
  State<Page404> createState() => _Page404State();
}


class _Page404State extends State<Page404> {
  String selectedItem = 'Opción 1';
  List<String> menuItems = ['Opción 1', 'Opción 2', 'Opción 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('página en construcción'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Se está construyendo tu empresa'),
          ],
        ),
      ),
    );
  }
}
