import 'package:flutter/material.dart';
import 'package:home/pages/home_page.dart';
import 'package:home/pages/login_page.dart';
import 'package:home/pages/otra_page.dart';
import 'package:home/pages/pages_404.dart';
import 'package:home/pages/servicios.page.dart';


void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _routes = {
    '/Home': (context)=> HomePage(),
    '/Login': (context)=> LoginPage(),
    '/Registro': (context)=> ServiciosPage(),
    '/Menu': (context)=> OtraPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Material App',
      initialRoute: '/Home',
      routes: _routes,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) => Page404(),);
      },
     // home: HomePage(),
    );
  }
}






