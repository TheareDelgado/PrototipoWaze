import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/cupertino.dart';
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
          backgroundColor: Color.fromARGB(255, 21, 23, 112),
          automaticallyImplyLeading: false,
          leadingWidth: 100,
          leading: ElevatedButton.icon(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back),
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
                    width: 40.0,
                  ),
                  IconButton(
                      icon: Image.asset('assets/images/accidente.png'),
                      iconSize: 100,
                      onPressed: () {}),
                  SizedBox(
                    width: 30.0,
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
                    width: 50.0,
                  ),
                  Text(
                    'Accidente',
                    style: TextStyle(
                      color: Color.fromARGB(255, 21, 23, 112),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Impact',
                    ),
                  ),
                  SizedBox(
                    width: 80.0,
                  ),
                  Text(
                    'Policia',
                    style: TextStyle(
                      color: Color.fromARGB(255, 21, 23, 112),
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
                    width: 40.0,
                  ),
                  IconButton(
                      icon: Image.asset('assets/images/congestion.png'),
                      iconSize: 100,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AlertaCongestion()));
                      }),
                  SizedBox(
                    width: 30.0,
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
                    width: 50.0,
                  ),
                  Text(
                    'Congestión',
                    style: TextStyle(
                      color: Color.fromARGB(255, 21, 23, 112),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Impact',
                    ),
                  ),
                  SizedBox(
                    width: 70.0,
                  ),
                  Text(
                    'Ladrón',
                    style: TextStyle(
                      color: Color.fromARGB(255, 21, 23, 112),
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
                    width: 40.0,
                  ),
                  IconButton(
                      icon: Image.asset('assets/images/advertencia.png'),
                      iconSize: 100,
                      onPressed: () {}),
                  SizedBox(
                    width: 30.0,
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
                    width: 70.0,
                  ),
                  Text(
                    'Peligro',
                    style: TextStyle(
                      color: Color.fromARGB(255, 21, 23, 112),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Impact',
                    ),
                  ),
                  SizedBox(
                    width: 95.0,
                  ),
                  Text(
                    'Clima',
                    style: TextStyle(
                      color: Color.fromARGB(255, 21, 23, 112),
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

class AlertaCongestion extends StatefulWidget {
  static String id = 'AlertaCongestion';

  @override
  State<AlertaCongestion> createState() => _AlertaCongestionState();
}

class _AlertaCongestionState extends State<AlertaCongestion> {
  @override
  String radioButtonItem = 'Leve';
  int id = 1;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 21, 23, 112),
        automaticallyImplyLeading: false,
        leadingWidth: 100,
        leading: ElevatedButton.icon(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back),
          label: const Text('Volver'),
          style: ElevatedButton.styleFrom(
              elevation: 0, primary: Colors.transparent),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Maps()));
              },
              icon: Icon(Icons.close_outlined))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      backgroundColor: Color.fromRGBO(225, 231, 255, 1),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset(
              'assets/images/congestion.png',
            ),
            Text(
              "Congestión",
              style: TextStyle(fontSize: 28),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 1,
                  groupValue: id,
                  onChanged: (val) {
                    setState(() {
                      radioButtonItem = 'Leve';
                      id = 1;
                    });
                  },
                ),
                Text(
                  'Leve',
                  style: new TextStyle(fontSize: 17.0),
                ),
                Radio(
                  value: 2,
                  groupValue: id,
                  onChanged: (val) {
                    setState(() {
                      radioButtonItem = 'Moderado';
                      id = 2;
                    });
                  },
                ),
                Text(
                  'Moderado',
                  style: new TextStyle(
                    fontSize: 17.0,
                  ),
                ),
                Radio(
                  value: 3,
                  groupValue: id,
                  onChanged: (val) {
                    setState(() {
                      radioButtonItem = 'Alto';
                      id = 3;
                    });
                  },
                ),
                Text(
                  'Alto',
                  style: new TextStyle(fontSize: 17.0),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 151, 152, 207)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Alertas()));
                },
                child: Text('Más tarde'),
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 21, 23, 112)),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Maps()));
                },
                child: Text('Enviar'),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
