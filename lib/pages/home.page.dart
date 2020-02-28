import 'package:abastecer/widget/logo.widget.dart';
import 'package:abastecer/widget/submit-form.dart';
import 'package:abastecer/widget/success.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _gasCtrl = new MoneyMaskedTextController();

  var _alcCtrl = new MoneyMaskedTextController();

  var _busy = false;

  var _completed = false;

  var _resultText = "Compensa utulizar álcool";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Logo(),
          _completed
          ? Succes(
            result: _resultText,
            reset: () {},
            )
            :
            SubmitForm(
              gasCtrl: _gasCtrl,
              alcCtrl: _alcCtrl,
              submitFunc: calculate,
              busy: _busy,
              ),
      ],
      ),
    );
  }

    Future calculate() {
    double alc =
      double.parse(_alcCtrl.text.replaceAll(new RegExp(r' [,.]'), '')) / 100;
    double gas = 
      double.parse(_gasCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double res = alc/gas;

    setState(() {
      _completed = false;
      _busy = true;
    });

    if (res >= 0.7) {
      _resultText = "Compensa utilizar Gasolina!";
    }
    else {
      _resultText = "Compensa utilizar Álcool!";
    }

    _busy = false;
    _completed = true;
   
  }
}