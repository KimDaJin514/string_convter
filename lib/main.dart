import 'package:flutter/material.dart';
import 'package:string_converter_module/extension_util/num_formatter.dart';
import 'package:string_converter_module/extension_util/string_formatter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  final int _numToWon = 10000000;
  final String _phoneString = '01049296797';
  final String _dateWithUnit = '20210302';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_numToWon.numWithComma),
            Text(_phoneString.phoneFormat),
            Text(_dateWithUnit.dateWitUnit),
            Text(_dateWithUnit.parseDateDot),
            Text(_dateWithUnit.parseDateHyphen),
          ],
        ),
      ),
    );
  }
}
