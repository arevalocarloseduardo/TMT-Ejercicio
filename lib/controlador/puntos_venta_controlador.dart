import 'dart:convert';
import 'dart:async' show Future;
import 'package:flutter/material.dart';
import 'package:tmt/modelo/punto_venta.dart';
import 'package:http/http.dart' as http;

class PuntosVentasInfo with ChangeNotifier{
  List<PuntosVentas>_puntosVenta=new List<PuntosVentas>();

  List<PuntosVentas> get puntosVenta =>_puntosVenta;


Future<List<PuntosVentas>> listaPuntosVenta() async {
  var data = await http.get("http://zenda.tmt.com.ar:84/api/v1/nivea/training/nodes");
    final jsonData = json.decode(data.body);
  ListaDatos puntosVentasData =  ListaDatos.fromJson(jsonData);
  
  _puntosVenta = puntosVentasData.getListaPuntosVenta();
  notifyListeners();
  return _puntosVenta;
}
}