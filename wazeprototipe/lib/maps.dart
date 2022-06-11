import 'package:flutter/material.dart';
import 'dart:async';
import 'package:wazeprototipe/login.dart';
import 'package:wazeprototipe/dashboard.dart';

// ignore: use_key_in_widget_constructors
class Maps extends StatelessWidget {
  static String id = 'maps';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Color.fromRGBO(68, 70, 233, 1),
          child: Row(
            children: [
              //TextField(),
              IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {}),
            ],
          ),
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(68, 70, 233, 1),
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
                  color: Color.fromRGBO(68, 70, 233, 1),
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
                  color: Color.fromRGBO(68, 70, 233, 1),
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
                  color: Color.fromRGBO(68, 70, 233, 1),
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
        backgroundColor: Color.fromRGBO(225, 231, 255, 1), //Color de Fondo

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/maps.png',
                //width: 482,
                //height: 850,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
