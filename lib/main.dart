import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  void _getListApi() {
    http
        .get(
          Uri.https('api.themoviedb.org', '/4/list/1'), 
          headers: {
            'Authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI0NTZkNGFhMzE0NTAwZTM1MWY5NTIwZmY5MWUxZGU4ZiIsInN1YiI6IjY1MmI0OWZiMGNiMzM1MTZmZWM3ZTM1OSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.Lg91uB39cdv4aMX0qcj_0fuFc7lFAj1dQEthodUICUc',
            'accept': 'application/json'
          },
        )
        .then((Response value) => print(value.body));

  }

  @override
  void initState() {
    super.initState();
    _getListApi();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
