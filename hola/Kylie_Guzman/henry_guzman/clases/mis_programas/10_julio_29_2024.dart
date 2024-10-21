
class Empleo {
  
  String? tipo_de_empleo;
  int? jonada;
  int? salario;
}

class Transporte {

  String? tipo;
  int? tiempo_horas;
}

class Actividad {

  String? hobby;
  int? tiempo_horas;
}

void main (){

  Empleo juan = new Empleo();

  juan.tipo_de_empleo = "presencial";
  juan.jonada = 8;
  juan.salario = 1500000;

  Transporte nicole = new Transporte();

  nicole.tipo = "moto";
  nicole.tiempo_horas = 1;

  Actividad camilo = Actividad();

  camilo.hobby = "dibujar";
  camilo.tiempo_horas = 2;
}