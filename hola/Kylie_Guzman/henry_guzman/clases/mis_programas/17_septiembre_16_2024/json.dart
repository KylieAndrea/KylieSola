
import 'dart:convert';

class Colaborador{

  String? nombreCompleto;
  int? tipoColaborador;
  double? aporte;

  Colaborador(Map m){

    this.nombreCompleto = m['nombreCompleto'];
    this.tipoColaborador = m['tipoColaborador'];
    this.aporte = m['aporte'];
  }
}

void main(){

  String hola = '{"nombreCompleto": "kylie", "tipoColaborador": 1, "aporte": 1000.0}';
  Map<String, dynamic> m = jsonDecode(hola);

  Colaborador mundo = new Colaborador(m);
  //print(mundo);
  print(mundo.nombreCompleto);
  print(mundo.tipoColaborador);
  print(mundo.aporte);

}