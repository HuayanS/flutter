import 'package:flutter/material.dart';

import 'package:flutter_teste/componets/contrato_select.dart';

class DependentesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Image.asset(
          "assets/plasa.png",
          fit: BoxFit.cover,
        ),
        centerTitle: true,
      ),
      body: Container(
        child: ContratoSelect(),
      ),
    );
  }
}

