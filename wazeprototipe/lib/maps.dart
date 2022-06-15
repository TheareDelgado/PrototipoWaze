import 'package:flutter/material.dart';
import 'dart:async';
import 'package:wazeprototipe/login.dart';
import 'package:wazeprototipe/dashboard.dart';
import 'package:wazeprototipe/alertas.dart';
import "package:google_maps_flutter/google_maps_flutter.dart";

// ignore: use_key_in_widget_constructors
class Maps extends StatefulWidget {
  static String id = 'maps';
  static final LatLng _kMapCenter =
      LatLng(19.018255973653343, 72.84793849278007);

  static final CameraPosition _kInitialPosition =
      CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);
  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: BottomAppBar(
              color: Color.fromARGB(255, 21, 23, 112),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                //alignment: Alignment.bottomCenter,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '¿A donde vas?',
                    hintStyle: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromARGB(103, 255, 255, 255)),
                    prefixIcon: Icon(Icons.search, color: Colors.white),
                  ),
                ),
              )),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          drawer: Drawer(
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 21, 23, 112),
                  ),
                  child: Column(children: [
                    Text(
                      'NOMBRE  APELLIDO',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Impact'),
                    ),
                    SizedBox(
                        height: 70.0,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 50.0,
                            ),
                            Icon(
                              Icons.directions_bike_outlined,
                              color: Colors.white,
                              size: 50,
                            ),
                            SizedBox(
                              width: 70.0,
                            ),
                            Icon(
                              Icons.timer,
                              color: Colors.white,
                              size: 50,
                            ),
                            SizedBox(
                              width: 50.0,
                            ),
                          ],
                        )),
                    SizedBox(
                        height: 30.0,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 50.0,
                            ),
                            Text('0.0 Km',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Impact',
                                )),
                            SizedBox(
                              width: 50.0,
                            ),
                            Text('0.0 Hrs',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Impact',
                                )),
                            SizedBox(
                              width: 10.0,
                            ),
                          ],
                        )),
                  ]),
                ),
                SizedBox(
                  height: 70.0,
                ),
                ListTile(
                  leading: Icon(
                    Icons.bar_chart,
                    color: Color.fromARGB(255, 21, 23, 112),
                    size: 60,
                  ),
                  title: const Text(
                    'Mis Estadísticas',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Impact',
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Dashboard()));
                    // Update the state of the app.
                    // ...

                    // Update the state of the app.
                    // ...
                  },
                ),
                SizedBox(
                  height: 30.0,
                ),
                ListTile(
                  leading: Icon(
                    Icons.help,
                    color: Color.fromARGB(255, 21, 23, 112),
                    size: 60,
                  ),
                  title: const Text(
                    'Consejos',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Impact',
                    ),
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                SizedBox(
                  height: 30.0,
                ),
                ListTile(
                  leading: Icon(
                    Icons.exit_to_app,
                    color: Color.fromARGB(255, 21, 23, 112),
                    size: 60,
                  ),
                  title: const Text(
                    'Cerrar Sesión',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Impact',
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                    // Update the state of the app.
                    // ...
                  },
                ),
              ],
            ),
          ),
          resizeToAvoidBottomInset: false,
          //backgroundColor: Color.fromRGBO(225, 231, 255, 1), //Color de Fondo

          body: Stack(
            children: <Widget>[
              GoogleMap(
                initialCameraPosition: CameraPosition(
                    target: LatLng(-33.45251672253850, -70.65105506131032),
                    zoom: 17.0,
                    tilt: 0,
                    bearing: 0),
              ),
              Positioned(
                  height: 85,
                  width: 85,
                  bottom: 50,
                  right: 20,
                  child: FloatingActionButton(
                    child: Image.asset('assets/images/Alertas.png'),
                    backgroundColor: Colors.white,
                    heroTag: 1,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Alertas()));
                      //do something on press
                    },
                  )),
            ],
          )),
    );
  }
}
