// color: Color.fromRGBO(135, 159, 245, 1), fontSize: 13) Color letras claras
//Color.fromRGBO(225, 231, 255, 1), Color fondo

// ignore_for_file: unused_import

/*COSAS ÚTILES QUE SE PUEDEN OCUPAR PARA MÁS ADELANTE

Text("¿Ya tienes una cuenta?",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(135, 159, 245, 1),
                fontSize: 15,
              ))




*/
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:wazeprototipe/maps.dart';

// ignore: use_key_in_widget_constructors
class Login extends StatelessWidget {
  static String id = 'login';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromRGBO(225, 231, 255, 1), //Color de Fondo

        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              'assets/images/20945495.png',
              width: 220,
              height: 220,
            ),
            SizedBox(
              height: 15.0,
            ),
            _textFieldCorreo(),
            SizedBox(
              height: 15.0,
            ),
            _textFieldContrasena(),
            SizedBox(
              height: 15.0,
            ),
            SizedBox(
                height: 40.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      style: TextButton.styleFrom(
                        alignment: Alignment.center,
                        backgroundColor: Color.fromRGBO(68, 70, 233, 1),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Maps()));
                        // Respond to button press

                        // Respond to button press
                      },
                      child: Text(
                        'Iniciar sesión',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                      height: 20.0,
                    ),
                  ],
                )),
            SizedBox(
              height: 100.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Text("¿No tienes una cuenta?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(135, 159, 245, 1),
                        fontSize: 15,
                      )),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Registro()));
                      // Respond to button press

                      // Respond to button press
                    },
                    child: Text(
                      "Regístrate",
                      style: (TextStyle(
                        color: Color.fromRGBO(67, 70, 233, 1),
                        fontSize: 15,
                      )),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class Registro extends StatelessWidget {
  static String id = 'registro';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromRGBO(225, 231, 255, 1), //Color de Fondo

        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              'assets/images/20945495.png',
              width: 220,
              height: 220,
            ),
            SizedBox(
              height: 15.0,
            ),
            _textFieldNombre(),
            SizedBox(
              height: 15.0,
            ),
            _textFieldCorreo(),
            SizedBox(
              height: 15.0,
            ),
            _textFieldContrasena(),
            SizedBox(
              height: 15.0,
            ),
            SizedBox(
                height: 40.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      style: TextButton.styleFrom(
                        alignment: Alignment.center,
                        backgroundColor: Color.fromRGBO(68, 70, 233, 1),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Registrarse',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                      height: 20.0,
                    ),
                  ],
                )),
            SizedBox(
              height: 100.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Text("¿Ya tienes una cuenta?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(135, 159, 245, 1),
                        fontSize: 15,
                      )),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                      // Respond to button press
                    },
                    child: Text(
                      "Iniciar Sesión",
                      style: (TextStyle(
                        color: Color.fromRGBO(67, 70, 233, 1),
                        fontSize: 15,
                      )),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

Widget _textFieldNombre() {
  return _textFieldGeneral(
    labelText: 'Nombre',
    hintText: 'Nombre Apellido',
    onChanged: (value) {},
    icon: Icons.person_outline,
  );
}

Widget _textFieldCorreo() {
  return _textFieldGeneral(
    labelText: 'Email',
    hintText: 'example@example.com',
    keyboardtype: TextInputType.emailAddress,
    onChanged: (value) {},
    icon: Icons.email_outlined,
  );
}

Widget _textFieldContrasena() {
  return _textFieldGeneral(
    labelText: 'Contraseña',
    onChanged: (value) {},
    icon: Icons.lock_outline_rounded,
    obscureText: true,
  );
}

class _textFieldGeneral extends StatelessWidget {
  final String labelText;
  final String hintText;
  final Function onChanged;
  final TextInputType keyboardtype;
  final IconData icon;
  final bool obscureText;
  // ignore: unused_element

  const _textFieldGeneral(
      {required this.labelText,
      this.hintText = '',
      required this.onChanged,
      this.keyboardtype = TextInputType.emailAddress,
      required this.icon,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      margin: EdgeInsets.symmetric(horizontal: 35.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),

      child: TextField(
        keyboardType: keyboardtype,
        obscureText: obscureText,
        decoration: InputDecoration(
            prefixIcon: Icon(icon), labelText: labelText, hintText: hintText),
        onChanged: (value) {},
      ),
    );
  }
}
