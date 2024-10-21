import 'dart:io';

void main(){

  print('ingrese la cantidad de alumnos');
  int cantidad = int.parse(stdin.readLineSync()!);

  for(int i = 1; i <= cantidad; i++){

    print('ingrese su nombre');
    String nombre = stdin.readLineSync()!;

    int var1 = nombre.length;
    var var2 = nombre.substring(var1-2, var1);

    print('su nombre es $nombre, tiene $var1 caracteres y sus dos ultimos son $var2');
  }
}