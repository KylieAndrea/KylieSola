import 'dart:io';

void main() {

  int personas = 100;
  int num = 0;

  for (int i = 1 ; i <= personas; i++ ){

    print("has ingresado a un concurso");

    print("ingresa tu nombre");
    String name = stdin.readLineSync()!;

    num = num + 1;

    if(num == 28){

      print("$name has ganado!!");

    }else(){
          
        print("$name lamentablemente has perdido");
    };
    
  }
}

