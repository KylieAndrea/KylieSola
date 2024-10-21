abstract class Figura{}

class Cuadrado implements Figura{}

class Circulo implements Figura{}

void main(){

  Figura figura = Circulo();

  if(figura is Circulo){
    Cuadrado c = figura as Cuadrado;
  }else{
    Circulo c = figura as Circulo;
  }

}

