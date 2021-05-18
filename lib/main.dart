import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

void main() => runApp(MaterialApp(
  title: "Currency converter",
  home: CurrencyConverter(),
));

class CurrencyConverter extends StatefulWidget{
  @override
  _CurrencyConverterState createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter>{
  final fromController = TextEditingController();
  double eur = 4.7;
  double result;
  double resultFontSize = 48.0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Currency Converter"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
            Image.network(
                'https://haihuin2.com/wp-content/uploads/2020/06/bancnote-romanesti-anunt-bnr-bani-falsi.jpg'
            ),
            TextField(
              controller: fromController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'enter the amount in EUR'
              ),
              ),
              ElevatedButton(onPressed: (){
                result = eur* double.parse(fromController.text);
                print(result);
                },
                  child: Text("Convert!", style: TextStyle(color: Colors.white),))
            ],
          ),
        ),
      );
  }
}


