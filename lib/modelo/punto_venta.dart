class ListaDatos {
  List<PuntosVentas> listPuntosVenta;
  ListaDatos({this.listPuntosVenta});
  factory ListaDatos.fromJson(Map<String, dynamic> json) => new ListaDatos(
        listPuntosVenta: new List<PuntosVentas>.from(
            json["data"].map((x) => PuntosVentas.fromJson(x))),
      );
      
    List<PuntosVentas> getListaPuntosVenta() {
 
    return listPuntosVenta;
  }
}

class PuntosVentas {
  int id;
  String name;
  String address;
  String latitude;
  String longitude;
  City city;

  PuntosVentas({
    this.id,
    this.name,
    this.address,
    this.latitude,
    this.longitude,
    this.city,
  });
  factory PuntosVentas.fromJson(Map<String, dynamic> json) => new PuntosVentas(
        id: json["id"],
        name: json["name"],
        address: json["address"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        city: City.fromJson(json["city"]),
      );
}

class City {
  int id;
  String name;

  City({
    this.id,
    this.name,
  });

  factory City.fromJson(Map<String, dynamic> json) => new City(
        id: json["id"],
        name: json["name"],
      );
}
