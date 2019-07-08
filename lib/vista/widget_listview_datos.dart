import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tmt/controlador/puntos_venta_controlador.dart';
import 'package:tmt/modelo/punto_venta.dart';

import 'datos_page.dart';

class ListViewDatos extends StatefulWidget {
  @override
  _ListViewDatosState createState() => _ListViewDatosState();
}

class _ListViewDatosState extends State<ListViewDatos> {

  @override
  Widget build(BuildContext context) {
    final puntosVentasInfo = Provider.of<PuntosVentasInfo>(context);
    return Container(
      child: FutureBuilder<List<PuntosVentas>>(
          future: puntosVentasInfo.listaPuntosVenta(),
          builder: (BuildContext context,
              AsyncSnapshot<List<PuntosVentas>> snapshot) {
            if (snapshot.data == null) {
              return Container(
                child: Text("Cargando"),
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(snapshot.data[index].name),
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>DatosPage(data:snapshot.data[index]))),
                    subtitle: Text(snapshot.data[index].address),
                  );
                },
              );
            }
          }),
    );
  }

}
