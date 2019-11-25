import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';


class CobrancaPage extends StatefulWidget {
  @override
  _CobrancaPageState createState() => _CobrancaPageState();
}

class _CobrancaPageState extends State<CobrancaPage> {

GoogleMapController myController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Image.asset("assets/plasa.png",fit: BoxFit.cover,),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 500.0,
            width: double.infinity,
            child: GoogleMap(
              onMapCreated: (controller){
                setState(() {
                  myController =controller;

                });
              },
              initialCameraPosition: CameraPosition(
                target: LatLng(-3.774865, -38.565094),
                zoom: 60.0
              ),
            ),
          )
        ],
      ),
    );
  }

}
