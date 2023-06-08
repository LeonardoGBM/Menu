import 'package:flutter/material.dart';

class OtraPage extends StatefulWidget {
  const OtraPage({Key? key}) : super(key: key);

  @override
  State<OtraPage> createState() => _OtraPageState();
}

class _OtraPageState extends State<OtraPage> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página en construcción'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             CircleAvatar(
            radius: 150.0,
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage('images/cita.jpg'),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Text(
              'Menu de Citas',
               style: TextStyle(
              fontFamily: 'cursiva',
              fontSize: 30.0,
            ),
            ),
          ),
          SizedBox(height: 20.0),
            Text('Abre el menu de abajo y escoge una opción de la cita que quieres'),
            const SizedBox(height: 20),
            DropdownButton<String>(
              value: selectedOption,
              onChanged: (String? newValue) {
                setState(() {
                  selectedOption = newValue;
                });
              },
              items: <String>[
                'Cita 1',
                'Cita 2',
                'Cita 3',
                'Cita 4',
                'Cita 5',
                'Cita 6',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
             SizedBox(height: 20.0),
          Center(
            child: ElevatedButton(
          onPressed: () {
          Navigator.popAndPushNamed(context, '/Home');
                },
              child: Text('Home'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          ],
        ),
      ),
      
    );
  }
}
