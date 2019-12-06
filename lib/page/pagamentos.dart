import 'package:flutter/material.dart';


class PagamentosPage extends StatefulWidget {
  @override
  _PagamentosPageState createState() => _PagamentosPageState();
}

class _PagamentosPageState extends State<PagamentosPage> {

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
            child: new Text('Seus Pagamentos',textAlign: TextAlign.center,),
          ),
        ],
      ),
    );
  }
}
