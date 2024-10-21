import 'dart:io';

void main (){

  print ('digite un numero entero');
  int numero = int.parse(stdin.readLineSync()!);

  if( numero <0 ){

    print('el numero q digito es negativo');

  }else if( numero >0 ){

   print ('el numero que digito es positivo');

  }else(){

   print('el numero que digito es igual a cero');

  };

}

  