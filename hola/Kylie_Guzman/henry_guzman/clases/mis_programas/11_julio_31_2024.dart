
class Maquillaje{

String? nombre;
String? tipo;
int? precio_dolar;
String? para_q_sirve;
String? marca;
String? creador;

  Maquillaje(String marca, String creador){

  this.marca = marca;
  this.creador = creador;

  }
}

void main(){

  Maquillaje kylie = new Maquillaje("Dior", "christian Dior");
  
  kylie.nombre = "kylie";
  kylie.tipo = "corrector";
  kylie.precio_dolar = 30;
  kylie.para_q_sirve = "ocultar las ojeras y manchas de la piel";

  print("la persona ${kylie.nombre} ha comprado un ${kylie.tipo} ${kylie.marca} por ${kylie.precio_dolar} dolares, este producto sirve para ${kylie.para_q_sirve} creado por ${kylie.creador}");

}
