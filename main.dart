// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() => runApp(miApp());

class miApp extends StatelessWidget {
  const miApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ("Login"),
      home: Inicio(),
    );
  }
}
class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: cuerpo(), 
    );
  }
}

Widget cuerpo(){
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(image: NetworkImage("https://c.tenor.com/cEs76nD0-3IAAAAC/fbi.gif"),
      fit: BoxFit.cover
      )
    ),
    child: Center( 
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        funcionNombre(),
        campoUsuario(),
        campoContra(),
        botonEntrar(),
      ],
     ),
   ),
  );
}

Widget funcionNombre(){
  return Text("sign in", style: TextStyle(color: Colors.white, fontSize: 35.5, fontWeight: FontWeight.bold ));
}
Widget campoUsuario(){
  return  Container(
    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
    child: TextField(
      decoration: InputDecoration(
        hintText: "usuario :P", fillColor: Colors.white,
        filled: true, 
      ),
    ),
  );
}

Widget campoContra(){
  return  Container(
    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "contraseña OuO", fillColor: Colors.white,
        filled: true, 
      ),
    ),
  );
}

Widget botonEntrar(){
  return ElevatedButton(
    onPressed:  (){},
    style: ElevatedButton.styleFrom(
      primary: Colors.green,
      onPrimary: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15)
    ),
    child: Text("Ingresar :D"),
  );
}