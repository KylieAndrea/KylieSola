import 'dart:io';

void main() {

  int cont = 0;
  int acum = 0;

  int cont2 =0;
  int acum2 =0;

  print ('ingrese numero de aprendices');
  int? x = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= x; i++ );{

    print ('ingrese la cantidad aportada por el aprendiz');
    int? variable = int.parse(stdin.readLineSync()!);

    if (variable >= 5000){

       cont = cont +1;
       acum = acum + variable;

    }else{

       cont2 = cont2 ++;
       acum2 = acum2 + variable;

    }
  }
  int cantidad = acum + acum2;
  double promedio = cantidad / x;
  double promedio2 = acum / cont;
  double promedio3 = acum2 / cont2;

  print('la cantidad total de aportes es de $cantidad y el promedio es $promedio');
  
  print('los que aportaron 5000 0 mas = $cont');
  print('total = $acum');
  print('promedio = $promedio2');

  print('los que aportaron menos de 5000 = $cont');
  print('total = $acum2');
  print('promedio = $promedio3');

}