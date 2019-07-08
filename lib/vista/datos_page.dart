import 'package:flutter/material.dart';
import 'package:tmt/modelo/punto_venta.dart';

class DatosPage extends StatefulWidget {
  DatosPage({this.data});
  final PuntosVentas data;

  @override
  _DatosPageState createState() => _DatosPageState();
}

class _DatosPageState extends State<DatosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Detalles de punto de venta"),),
          body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Nombre: ${widget.data.name}"),
                ),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Direccion: ${widget.data.address}"),
                ),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Ciudad: ${widget.data.city}"),
                ),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Coordenas: Long:${widget.data.longitude} Lat:${widget.data.latitude}"),
                ),
              ],),
        )
      ),
    );
  }
}
