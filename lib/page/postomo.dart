import 'package:flutter/material.dart';


class PostomoPage extends StatefulWidget {
  @override
  _PostomoPageState createState() => _PostomoPageState();
}

class _PostomoPageState extends State<PostomoPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Image.asset("assets/plasa.png",fit: BoxFit.cover,),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
           Padding(padding: const EdgeInsets.all(20.0),
            child: Text('Atendimento Póstomo',textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text('Sede Fortaleza/Parangaba'),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.3,1],
                colors: [
                  Color(0xFFFFA726),
                  Color(0XFFFFB74D),
                ],
              ),
              borderRadius: BorderRadius.all
                (Radius.circular(5),
              ),
            ),
            child: SizedBox.expand(
              child: FlatButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Solicitar Atendimento",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        fontSize: 20,
                      ),

                    ),
                    Container(
                      child: SizedBox(
                        //child: Image.asset(),
                        height: 28,
                        width: 28,
                      ),
                    ),
                  ],
                ),
                onPressed: ()=>{},
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.3,1],
                colors: [
                  Color(0xFFFFA726),
                  Color(0XFFFFB74D),
                ],
              ),
              borderRadius: BorderRadius.all
                (Radius.circular(5),
              ),
            ),
            child: SizedBox.expand(
              child: FlatButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Atendimento via Whatsapp",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        fontSize: 20,
                      ),

                    ),
                    Container(
                      child: SizedBox(
                        //child: Image.asset(),
                        height: 28,
                        width: 28,
                      ),
                    ),
                  ],
                ),
                onPressed: ()=>{},
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text('SEDE Fortaleza / Centro'),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.3,1],
                colors: [
                  Color(0xFFFFA726),
                  Color(0XFFFFB74D),
                ],
              ),
              borderRadius: BorderRadius.all
                (Radius.circular(5),
              ),
            ),
            child: SizedBox.expand(
              child: FlatButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Solicitar Atendimento",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        fontSize: 20,
                      ),

                    ),
                    Container(
                      child: SizedBox(
                        //child: Image.asset(),
                        height: 28,
                        width: 28,
                      ),
                    ),
                  ],
                ),
                onPressed: ()=>{},
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.3,1],
                colors: [
                  Color(0xFFFFA726),
                  Color(0XFFFFB74D),
                ],
              ),
              borderRadius: BorderRadius.all
                (Radius.circular(5),
              ),
            ),
            child: SizedBox.expand(
              child: FlatButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Atendimento via Whatsapp",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        fontSize: 20,
                      ),

                    ),
                    Container(
                      child: SizedBox(
                        //child: Image.asset(),
                        height: 28,
                        width: 28,
                      ),
                    ),
                  ],
                ),
                onPressed: ()=>{},
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text('SEDE Baturité'),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.3,1],
                colors: [
                  Color(0xFFFFA726),
                  Color(0XFFFFB74D),
                ],
              ),
              borderRadius: BorderRadius.all
                (Radius.circular(5),
              ),
            ),
            child: SizedBox.expand(
              child: FlatButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Solicitar Atendimento",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        fontSize: 20,
                      ),

                    ),
                    Container(
                      child: SizedBox(
                        //child: Image.asset(),
                        height: 28,
                        width: 28,
                      ),
                    ),
                  ],
                ),
                onPressed: ()=>{},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
