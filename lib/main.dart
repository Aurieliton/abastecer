import 'package:abastecer/pages/home.page.dart';
import 'package:abastecer/widget/input.widget.dart';
import 'package:abastecer/widget/loading-button.dart';
import 'package:abastecer/widget/logo.widget.dart';
import 'package:abastecer/widget/submit-form.dart';
import 'package:abastecer/widget/success.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(        
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

