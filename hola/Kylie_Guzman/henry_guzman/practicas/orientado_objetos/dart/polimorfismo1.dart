void main(){

  Animal perro = Perro();
  Animal gato = Gato();
  Animal pollito = Pollito();
  Animal animal = Animal();

  print("los perros hacen ${perro}");
  print("los perros hacen ${gato}");
  print("los perros hacen ${pollito}");
  print("los perros hacen ${animal}");

}
// se crea una clase tipo abstracta
class Animal{

  void hacerSonido(){

    print("animal hace un sonido unico");
  }
}

class Perro implements Animal{

// el override no es obligatorio solo es un comentario
  @override
  void hacerSonido(){

    print("wao! wao!");
  }
}

class Gato implements Animal{

  @override
  void hacerSonido(){

    print("miaw! miaw!");
  }
}

class Pollito implements Animal{

  @override
  void hacerSonido(){

    print("pio! pio!");
  }
}
