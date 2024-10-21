import 'dart:io';

void main (){

  print ('ingresar el numero de estudiantes');
  int? n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= n; i++);

  print('nombre del estudiantes');
  String? ne = stdin.readLineSync();

  print('ingrese nota numero 1');
  double n1 = double.parse(stdin.readLineSync()!);
  
  print('ingrese nota numero 2');
  double n2 = double.parse(stdin.readLineSync()!);

  print('ingrese nota numero 3');
  double n3 = double.parse(stdin.readLineSync()!);

  double suma = n1 + n2 + n3;
  double prom = suma/3;

  if( prom >6 ){

    print('el estudiante $ne a aprobado con un promedio de $prom / 10 ');

  }else{

    print('el estudiante $ne a desaprobado con un promedio de $prom / 10 ');

  };

}
