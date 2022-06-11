import 'package:flutter/material.dart';
import 'dart:async';
import 'package:wazeprototipe/maps.dart';

// ignore: use_key_in_widget_constructors
class Alertas extends StatelessWidget {
  static String id = 'alertas';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromRGBO(225, 231, 255, 1), //Color de Fondo
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(68, 70, 233, 1),
          automaticallyImplyLeading: false,
          leadingWidth: 100,
          leading: ElevatedButton.icon(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_left_sharp),
            label: const Text('Volver'),
            style: ElevatedButton.styleFrom(
                elevation: 0, primary: Colors.transparent),
          ),
        ),

        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              child: Row(
                children: [
                  SizedBox(
                    width: 60.0,
                  ),
                  IconButton(
                      icon: Image.asset('assets/images/accidente.png'),
                      iconSize: 100,
                      onPressed: () {}),
                  SizedBox(
                    width: 60.0,
                  ),
                  IconButton(
                      icon: Image.asset('assets/images/policia.png'),
                      iconSize: 100,
                      onPressed: () {}),
                  SizedBox(
                    width: 50.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
              child: Row(
                children: [
                  SizedBox(
                    width: 70.0,
                  ),
                  Text(
                    'Accidente',
                    style: TextStyle(
                      color: Color.fromRGBO(68, 70, 233, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Impact',
                    ),
                  ),
                  SizedBox(
                    width: 110.0,
                  ),
                  Text(
                    'Policia',
                    style: TextStyle(
                      color: Color.fromRGBO(68, 70, 233, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Impact',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            SizedBox(
              //height: 15.0,
              child: Row(
                children: [
                  SizedBox(
                    width: 60.0,
                  ),
                  IconButton(
                      icon: Image.asset('assets/images/congestion.png'),
                      iconSize: 100,
                      onPressed: () {}),
                  SizedBox(
                    width: 60.0,
                  ),
                  IconButton(
                      icon: Image.asset('assets/images/ladron.png'),
                      iconSize: 100,
                      onPressed: () {}),
                  SizedBox(
                    width: 50.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
              child: Row(
                children: [
                  SizedBox(
                    width: 70.0,
                  ),
                  Text(
                    'Congestión',
                    style: TextStyle(
                      color: Color.fromRGBO(68, 70, 233, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Impact',
                    ),
                  ),
                  SizedBox(
                    width: 100.0,
                  ),
                  Text(
                    'Ladrón',
                    style: TextStyle(
                      color: Color.fromRGBO(68, 70, 233, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Impact',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            SizedBox(
              //height: 15.0,
              child: Row(
                children: [
                  SizedBox(
                    width: 60.0,
                  ),
                  IconButton(
                      icon: Image.asset('assets/images/advertencia.png'),
                      iconSize: 100,
                      onPressed: () {}),
                  SizedBox(
                    width: 60.0,
                  ),
                  IconButton(
                      icon: Image.asset('assets/images/clima.png'),
                      iconSize: 100,
                      onPressed: () {}),
                  SizedBox(
                    width: 50.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
              child: Row(
                children: [
                  SizedBox(
                    width: 90.0,
                  ),
                  Text(
                    'Peligro',
                    style: TextStyle(
                      color: Color.fromRGBO(68, 70, 233, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Impact',
                    ),
                  ),
                  SizedBox(
                    width: 120.0,
                  ),
                  Text(
                    'Clima',
                    style: TextStyle(
                      color: Color.fromRGBO(68, 70, 233, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Impact',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35.0,
            ),
          ]),
        ),
      ),
    );
  }
}
