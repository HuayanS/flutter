import 'package:flutter/material.dart';


class DependentesPage extends StatefulWidget {
  @override
  _DependentesPageState createState() => _DependentesPageState();
}

class _DependentesPageState extends State<DependentesPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Image.asset("assets/plasa.png",fit: BoxFit.cover,),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          new Padding(padding: const EdgeInsets.all(8.0),
            child: new Text('Seus Dependentes',textAlign: TextAlign.center,),
          ),
        ],
      ),
    );
  }
}
