import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tmt/vista/home_page.dart';

import 'controlador/puntos_venta_controlador.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => PuntosVentasInfo(),
          child: MaterialApp(
        title: 'TMT',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(       
          primarySwatch: Colors.blue,
        ),
        home: HomePage()
      ),
    );
  }
}

