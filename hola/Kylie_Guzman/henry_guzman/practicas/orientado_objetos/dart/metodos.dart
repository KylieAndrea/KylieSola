
class Name{

  String? nombre_marca;

}

class Precio{

  String? camiseta_oversize;
  int? camiseta_normal;
}

class Estampado{

  String? frace_a_estampar;
  String? dibujo_a_estampar;
  String? talla;
  String? genero;
  int? cantidad;

  Estampado(String dibujo_a_estampar, String frace_a_estampar){

    this.dibujo_a_estampar = dibujo_a_estampar;
    this.frace_a_estampar = frace_a_estampar;
  }

}

class Tela{

  String? nombre;
  int? cantidad_metros;
  String? color; 

  Tela(String? nombre){

    this.nombre = nombre;

  }
}

void main(){

  Name run =  Name();
  run.nombre_marca = "HURTADOS";

  Estampado juan = new Estampado("ojos brillantes", "'las miradas dicen lo que las palabras no pueden'");
  
  juan.talla = "XL";
  juan.genero = "masculino";
  juan.cantidad = 45;

  Tela sebastian = new Tela("lino");
  
  sebastian.cantidad_metros = 300;
  sebastian.color = "blanco";

  print("la marca de camisetas estampadas ${run.nombre_marca} estara realizando con ${sebastian.cantidad_metros} metros de tela de ${sebastian.nombre} en color ${sebastian.color}");
  print("camisetas con un estampado de ${juan.dibujo_a_estampar} y debajo la frace ${juan.frace_a_estampar}");

  Precio ade = Precio();
  
  ade.camiseta_normal = 10;
  ade.camiseta_oversize = "depende de la talla";

  print("las camisetas ${run.nombre_marca} tienen como precio ${ade.camiseta_normal} dolares la normal mientras que la oversize ${ade.camiseta_oversize} para el precio");
}

