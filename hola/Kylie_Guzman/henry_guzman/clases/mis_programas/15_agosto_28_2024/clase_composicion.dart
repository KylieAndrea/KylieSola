class Bateria{}

class Celular{

  Bateria? _bateria;

// se crea un metodo constructor para rellenar el atributo
  Celular(Bateria b){
    this._bateria = b;
  }
// y un metodo setter para utilizarlo (al atributo se le pone "!" al final)
  Bateria getBateria(){
    return this._bateria!;
  }
}

void main() {

  Bateria a1 = new Bateria();

// este metodo NO es opcional lo que significa que siempre se debe de llenar o el programa no podra finalizar por falta de datos 
  Celular iphone = new Celular(a1);
 
  print(iphone._bateria);
}

