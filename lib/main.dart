import 'package:flutter/material.dart';
import 'package:app_olamundo/home.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'APP_HOME';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
        backgroundColor: Color.fromARGB(182, 247, 245, 245), 

      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Entre com seu E-mail',
              

            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Por Favor Coloque o Texto';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ElevatedButton(
              onPressed: () {
                
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp2()),
                );
                
              },
              child: const Text('Entrar'),
              
            ),
          ),
        ],
      ),
    );
  }
}

