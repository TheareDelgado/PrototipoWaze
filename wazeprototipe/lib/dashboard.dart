import 'package:flutter/material.dart';
import 'dart:async';
import 'package:wazeprototipe/login.dart';
import 'package:wazeprototipe/maps.dart';
import 'dart:math';

class Dashboard extends StatelessWidget {
  static String id = 'dashboard';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(225, 231, 255, 1),
        appBar: AppBar(
          title: Text('Mis Estadísticas'),
          backgroundColor: Color.fromARGB(255, 21, 23, 112),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 70.0,
                child: Row(
                  children: [
                    SizedBox(
                      width: 50.0,
                    ),
                    TextButton(
                      onPressed: () {
                        // Respond to button press
                      },
                      child: Text("Día    /",
                          style: TextStyle(
                              color: Color.fromARGB(255, 21, 23, 112),
                              fontSize: 20,
                              fontFamily: 'Impact',
                              fontWeight: FontWeight.bold)),
                    ),
                    TextButton(
                      onPressed: () {
                        // Respond to button press
                      },
                      child: Text("     Mes    /",
                          style: TextStyle(
                              color: Color.fromARGB(255, 21, 23, 112),
                              fontSize: 20,
                              fontFamily: 'Impact',
                              fontWeight: FontWeight.bold)),
                    ),
                    TextButton(
                      onPressed: () {
                        // Respond to button press
                      },
                      child: Text("   Año",
                          style: TextStyle(
                              color: Color.fromARGB(255, 21, 23, 112),
                              fontSize: 20,
                              fontFamily: 'Impact',
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 380.0,
              ),
              SizedBox(
                  height: 70.0,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30.0,
                      ),
                      Icon(
                        Icons.directions_bike_outlined,
                        color: Color.fromARGB(255, 21, 23, 112),
                        size: 50,
                      ),
                      SizedBox(
                        width: 70.0,
                      ),
                      Icon(
                        Icons.timer,
                        color: Color.fromARGB(255, 21, 23, 112),
                        size: 50,
                      ),
                      SizedBox(
                        width: 70.0,
                      ),
                      Icon(
                        Icons.speed_outlined,
                        color: Color.fromARGB(255, 21, 23, 112),
                        size: 50,
                      ),
                    ],
                  )),
              SizedBox(
                  height: 20.0,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30.0,
                      ),
                      Text('0.0 Km',
                          style: TextStyle(
                              color: Color.fromARGB(255, 21, 23, 112),
                              fontSize: 20,
                              fontFamily: 'Impact',
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 50.0,
                      ),
                      Text('0.0 Hrs',
                          style: TextStyle(
                              color: Color.fromARGB(255, 21, 23, 112),
                              fontSize: 20,
                              fontFamily: 'Impact',
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 50.0,
                      ),
                      Text('0.0 Km/h',
                          style: TextStyle(
                              color: Color.fromARGB(255, 21, 23, 112),
                              fontSize: 20,
                              fontFamily: 'Impact',
                              fontWeight: FontWeight.bold)),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
