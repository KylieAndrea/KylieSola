import 'dart:io';

abstract class Cine{
  void pelicula();
}

class Sala1 implements Cine{
  @override
  void pelicula(){
    print('Terror Y Suspenso');
  }
}

class Sala2 implements Cine{
  @override
  void pelicula(){
    print('Comedia Familiar');
  }
}

abstract class Empresa{
  void verPelicula();
  Cine empresaPelicula();
}

class CineDia implements Empresa{
  @override
  Cine empresaPelicula(){
    return Sala2();
  }
  
  @override
  void verPelicula(){}
}

class CineNoche implements Empresa{
  @override
  Cine empresaPelicula(){
    return Sala1();
  }
  
  @override
  void verPelicula(){}
}

class MyApp {
  Empresa? empresa;

  MyApp(int num){
    if (num == 1){
      this.empresa = CineDia();
    }else if (num == 2){
      this.empresa = CineNoche();
    }else{
      print('error');
    }
  }

  void prueba() {
    Cine cine = empresa!.empresaPelicula();
    cine.pelicula();
  }
}

void main(){
  //MyApp app = MyApp(3);
  //app.prueba();

  print('1. Cine de dia: Comedia Familiar (sala1)');
  print('2. Cine de noche: Terror Y Suspenso (sala2)');
  print('Ingresa el numero de la pelicula que desea ver:');
  int? aja = int.parse(stdin.readLineSync()!);

  MyApp app =   MyApp(aja);
  app.prueba();

  print('Que disfrute la funcion!!');
}