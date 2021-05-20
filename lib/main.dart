import 'package:flutter/material.dart';

void main() => runApp(MiLoginApp());

class MiLoginApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppMaster Alvarez',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IngresoSistema(),
    ); //Fin MaterialApp
  } //Fin de widget
} //Fin Class MiLoginApp

class IngresoSistema extends StatefulWidget {
  @override
  _IngresoSistemaState createState() => _IngresoSistemaState();
} // Fin class IngresoSistema

class _IngresoSistemaState extends State<IngresoSistema> {
  bool isAcceso = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: () {
            print('Menu button');
          },
        ), //Fin IconButton
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              print('Search button');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () {
              print('Filter button');
            },
          ),
        ], //Fin Actions <widget> []
        title: Text('Inicia Sesión'),
        flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [ Colors.pink[800], Colors.pink[400], Colors.pink, ],
                ),
              ),
            ),
      ), //Fin AppBar
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/heart.png'),
                SizedBox(height: 16.0),
              ],
            ),
            if(!isAcceso)
            Column()//Fin columna
          ], //Fin de widget[]
        ), //Fin ListView
      ), //Fin SafeArea
    ); //Fin de scaffold
  } //Fin widget
} // Fin class _IngresoSistemaState
