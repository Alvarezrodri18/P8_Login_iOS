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
              colors: [
                Colors.pink[800],
                Colors.pink[400],
                Colors.pink[400],
                Colors.pink[800],
              ],
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
            if (!isAcceso)
              //{
                Column(children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      // fillColor: Colors.amber,
                      labelText: 'Username',
                    ),
                  ),
                  SizedBox(height: 12.0),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Password',
                    ),
                    obscureText: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          child: Text('CANCELAR'),
                          onPressed: () {
                            setState(() {
                              isAcceso = false;
                            });
                          },
                        ),
                        RaisedButton(
          onPressed: () {
                            setState(() {
                              isAcceso = true;
                            });
                          },
          textColor: Colors.white,
          padding: const EdgeInsets.all(0.0),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.pink[800],
                  Colors.pink[400],
                  Colors.pink[800],
                ],
              ),
            ),
            padding: const EdgeInsets.all(10.0),
            child: const Text(
              'Iniciar Sesion',
              style: TextStyle(fontSize: 18)
            ),
          ),
        ),//fin raised
                        
                      ],//Fin <widget>[]
                    ),//Fin child
                  )//Fin de padding
                ], //fin <Widget>[]
                    )//Fin columna
               //}if verdadero
            else 
            Center(
                child: Column(
                  children: <Widget>[
                    Text('YAY, Estoy dentro!\n'),
                    RaisedButton(
                      elevation: 20.0,
                    onPressed: () {
                        setState(() {
                          isAcceso = false;
                        });
                      },
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(0.0),
                  child: Container(
                    decoration: BoxDecoration(
                    gradient: LinearGradient(
                    colors:[
                      Colors.pink[800],
                      Colors.pink[400],
                      Colors.pink[800],
                ],
              ),
            ),
            padding: const EdgeInsets.all(10.0),
            
            child: const Text(
              'Cerrar Sesion',
              style: TextStyle(fontSize: 20)
            ),
          ),
        ),//fin raised
                    
                  ],//fin widget[]
                ),//columna
              )//center
          ], //Fin de widget[]
        ), //Fin ListView
      ), //Fin SafeArea
    ); //Fin de scaffold
  } //Fin widget
} // Fin class _IngresoSistemaState
