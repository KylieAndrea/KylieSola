import 'dart:io';

void main() {

  int personas = 0;
  int num = 0;

  while(personas < 101 ){

    print("has ingresado a un concurso");

    print("ingresa tu nombre");
    String name = stdin.readLineSync()!;

    num = num + 1;
    personas = personas + 1;

    if(num == 28){

      print("$name has ganado!!");

    }else(){
          
        print("$name lamentablemente has perdido");
    };
    
  }
}

