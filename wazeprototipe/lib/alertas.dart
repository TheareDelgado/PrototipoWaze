// ignore_for_file: avoid_types_as_parameter_names

import 'package:flutter/material.dart';

import 'package:wazeprototipe/maps.dart';

// ignore: use_key_in_widget_constructors
class Alertas extends StatelessWidget {
  static String id = 'alertas';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white, //Color de Fondo
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _botonAccidente(),
                  SizedBox(
                    width: 50,
                  ),
                  _botonPolicia(),
                ],
              ),
            ),
            SizedBox(
              width: 50,
              height: 50,
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _botonCongestion(),
                  SizedBox(
                    width: 50,
                  ),
                  _botonLadron(),
                ],
              ),
            ),
            SizedBox(
              width: 50,
              height: 50,
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _botonAdvertencia(),
                  SizedBox(
                    width: 50,
                  ),
                  _botonClima(),
                ],
              ),
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
          ]),
        ),
      ),
    );
  }
}

Widget _congLeve() {
  return _Alerta(
    ruta: 'assets/images/congLeve.png',
    nombre: 'Moderado',
    altura: 70,
    ancho: 70,
  );
}

Widget _congModerada() {
  return _Alerta(
      ruta: 'assets/images/congModerado.png',
      nombre: 'Pesado',
      altura: 70,
      ancho: 70);
}

Widget _congAlta() {
  return _Alerta(
      ruta: 'assets/images/congAlta.png',
      nombre: 'Alto Total',
      altura: 70,
      ancho: 70);
}

Widget _Clima1() {
  return _Alerta(
      ruta: 'assets/images/lluvia.png',
      nombre: 'Lluvia',
      altura: 70,
      ancho: 70);
}

Widget _Clima2() {
  return _Alerta(
      ruta: 'assets/images/nieve.png', nombre: 'Nieve', altura: 70, ancho: 70);
}

Widget _Clima3() {
  return _Alerta(
      ruta: 'assets/images/viento.png',
      nombre: 'Viento',
      altura: 70,
      ancho: 70);
}

Widget _Advertencia1() {
  return _Alerta(
      ruta: 'assets/images/bicicleta.png',
      nombre: 'Fin Ciclovías',
      altura: 70,
      ancho: 70);
}

Widget _Advertencia2() {
  return _Alerta(
      ruta: 'assets/images/simbolo-menos.png',
      nombre: 'Mal Estado',
      altura: 70,
      ancho: 70);
}

Widget _Accidente1() {
  return _Alerta(
      ruta: 'assets/images/accidenteLeve.png',
      nombre: 'Leve',
      altura: 70,
      ancho: 70);
}

Widget _Accidente2() {
  return _Alerta(
      ruta: 'assets/images/accidenteGrave.png',
      nombre: 'Grave',
      altura: 70,
      ancho: 70);
}

Widget _botonAccidente() {
  return _BotonAlerta(
    nombre: 'Accidente',
    ruta: 'assets/images/accidente.png',
    dialog: _dAccidente(),
  );
}

Widget _botonPolicia() {
  return _BotonAlerta(
    nombre: 'Policia',
    ruta: 'assets/images/policia.png',
    dialog: _dPolicia(),
  );
}

Widget _botonCongestion() {
  return _BotonAlerta(
    nombre: 'Congestion',
    ruta: 'assets/images/embotellamiento.png',
    dialog: _dCongestion(),
  );
}

Widget _botonAdvertencia() {
  return _BotonAlerta(
    nombre: 'Advertencia',
    ruta: 'assets/images/advertencia.png',
    dialog: _dAdvertencia(),
  );
}

Widget _botonLadron() {
  return _BotonAlerta(
    nombre: 'Ladrón',
    ruta: 'assets/images/bandido.png',
    dialog: _dLadron(),
  );
}

Widget _botonClima() {
  return _BotonAlerta(
    nombre: 'Clima',
    ruta: 'assets/images/clima.png',
    dialog: _dClima(),
  );
}

class _Alerta extends StatelessWidget {
  final String ruta;
  final String nombre;
  final double altura;
  final double ancho;
  //final Widget dialog;

  const _Alerta({
    required this.ruta,
    required this.nombre,
    this.altura = 100,
    this.ancho = 100,
    //required this.dialog
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Material(
      child: InkWell(
        splashColor: Colors.white,
        onTap: () {},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Ink.image(
              image: AssetImage(ruta),
              height: altura,
              width: ancho,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              nombre,
              style: (TextStyle(
                  color: Colors.black87,
                  fontSize: 17,
                  fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
    ));
  }
}

class _BotonAlerta extends StatelessWidget {
  final String ruta;
  final String nombre;
  final double altura;
  final double ancho;
  final Widget dialog;
  //final Widget dialog;

  const _BotonAlerta(
      {required this.ruta,
      required this.nombre,
      this.altura = 100,
      this.ancho = 100,
      required this.dialog});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Material(
      child: InkWell(
        splashColor: Colors.white,
        onTap: () {
          showDialog(
              context: context,
              builder: (context) {
                return dialog;
              });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Ink.image(
              image: AssetImage(ruta),
              height: altura,
              width: ancho,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              nombre,
              style: (TextStyle(
                  color: Colors.black87,
                  fontSize: 17,
                  fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
    ));
  }
}

Widget _dAdvertencia() {
  return _Dialogs2(
    nombre: 'Advertencia',
    ruta: 'assets/images/advertencia.png',
    w1: _Advertencia1(),
    w2: _Advertencia2(),
  );
}

Widget _dAccidente() {
  return _Dialogs2(
    nombre: 'Accidente',
    ruta: 'assets/images/accidente.png',
    w1: _Accidente1(),
    w2: _Accidente2(),
  );
}

Widget _dCongestion() {
  return _Dialogs(
    nombre: 'Congestión',
    ruta: 'assets/images/embotellamiento.png',
    w1: _congLeve(),
    w2: _congModerada(),
    w3: _congAlta(),
  );
}

Widget _dClima() {
  return _Dialogs(
    nombre: 'Clima',
    ruta: 'assets/images/clima.png',
    w1: _Clima1(),
    w2: _Clima2(),
    w3: _Clima3(),
  );
}

Widget _dPolicia() {
  return _Dialogs3(
    nombre: 'Policia',
    ruta: 'assets/images/policia.png',
  );
}

Widget _dLadron() {
  return _Dialogs3(
    nombre: 'Ladrón',
    ruta: 'assets/images/bandido.png',
  );
}

class _Dialogs extends StatelessWidget {
  final String ruta;
  final String nombre;
  final Widget w1, w2, w3;

  //final Function function;
  const _Dialogs({
    required this.ruta,
    required this.nombre,
    required this.w1,
    required this.w2,
    required this.w3,

    //required this.function
  });
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
          height: 450,
          child: Column(
            children: [
              SizedBox(
                child: Row(children: [
                  ElevatedButton.icon(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.arrow_back,
                        color: Color.fromARGB(255, 21, 23, 112)),
                    label: const Text(''),
                    style: ElevatedButton.styleFrom(
                        elevation: 0, primary: Colors.transparent),
                  ),
                ]),
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset(
                ruta,
                width: 150,
                height: 150,
              ),
              Text(
                nombre,
                style: (TextStyle(
                    color: Colors.black87,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
              ),
              Divider(),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    w1,
                    SizedBox(
                      width: 20,
                    ),
                    w2,
                    SizedBox(
                      width: 20,
                    ),
                    w3
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 21, 23, 112)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Maps()));
                    },
                    child: Text('Enviar'),
                  ),
                  SizedBox(
                    width: 40,
                  )
                ]),
              )
            ],
          )),
    );
  }
}

class _Dialogs2 extends StatelessWidget {
  final String ruta;
  final String nombre;
  final Widget w1, w2;

  //final Function function;
  const _Dialogs2({
    required this.ruta,
    required this.nombre,
    required this.w1,
    required this.w2,

    //required this.function
  });
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
          height: 450,
          child: Column(
            children: [
              SizedBox(
                child: Row(children: [
                  ElevatedButton.icon(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.arrow_back,
                        color: Color.fromARGB(255, 21, 23, 112)),
                    label: const Text(''),
                    style: ElevatedButton.styleFrom(
                        elevation: 0, primary: Colors.transparent),
                  ),
                ]),
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset(
                ruta,
                width: 150,
                height: 150,
              ),
              Text(
                nombre,
                style: (TextStyle(
                    color: Colors.black87,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
              ),
              Divider(),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    w1,
                    SizedBox(
                      width: 30,
                    ),
                    w2
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 21, 23, 112)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Maps()));
                    },
                    child: Text('Enviar'),
                  ),
                  SizedBox(
                    width: 40,
                  )
                ]),
              )
            ],
          )),
    );
  }
}

class _Dialogs3 extends StatelessWidget {
  final String ruta;
  final String nombre;

  //final Function function;
  const _Dialogs3({
    required this.ruta,
    required this.nombre,
    //required this.function
  });
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
          height: 400,
          child: Column(
            children: [
              SizedBox(
                child: Row(children: [
                  ElevatedButton.icon(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.arrow_back,
                        color: Color.fromARGB(255, 21, 23, 112)),
                    label: const Text(''),
                    style: ElevatedButton.styleFrom(
                        elevation: 0, primary: Colors.transparent),
                  ),
                ]),
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset(
                ruta,
                width: 150,
                height: 150,
              ),
              Text(
                nombre,
                style: (TextStyle(
                    color: Colors.black87,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
              ),
              Divider(),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 21, 23, 112)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Maps()));
                    },
                    child: Text('Enviar'),
                  ),
                  SizedBox(
                    width: 40,
                  )
                ]),
              )
            ],
          )),
    );
  }
}
