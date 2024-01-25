import 'package:flutter/material.dart';
import 'package:missaopratica2/menu/TeladeInicio.dart';
import 'package:missaopratica2/locais/ams.dart';
import 'package:missaopratica2/menu/contato.dart';
import 'package:missaopratica2/menu/destinos.dart';
import 'package:missaopratica2/locais/madrid.dart';
import 'package:missaopratica2/locais/milao.dart';
import 'package:missaopratica2/locais/oslo.dart';
import 'package:missaopratica2/menu/pacote.dart';
import 'package:missaopratica2/locais/paris.dart';
import 'package:missaopratica2/menu/sobre.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: 'tl',
      routes: {
        'tl': (context) => TeladeInicio(),
        'd': (context) => destinos(),
        'pacote': (context) => pacote(),
        'contato': (context) => contato(),
        'sobre': (context) => sobre(),
        'Madrid': (context) => madrid(),
        'Paris': (context) => paris(),
        'Milão': (context) => milao(),
        'Ams': (context) => ams(), // Amsterdã
        'Oslo': (context) => oslo(),
      },
    );
  }
}
