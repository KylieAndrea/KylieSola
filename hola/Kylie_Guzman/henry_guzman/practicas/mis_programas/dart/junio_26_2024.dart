import 'dart:io';

void main (){

  int cont = 0;
  int acum = 0;

  int cont2 =0;
  int acum2 =0;

  int cantidad = 0;
  int users = 0;
  double promedio = 0;
  double promedio2 = 0;
  double promedio3 = 0;
  
  int h = 0;

  while (h < 500.000){
    
    print ('ingrese la cantidad aportada por el aprendiz');
    int? variable = int.parse(stdin.readLineSync()!);

    if (variable >= 5000){

       cont = cont +1;
       acum = acum + variable;

    }else{

       cont2 = cont2 ++;
       acum2 = acum2 + variable;

    }
  
   cantidad = acum + acum2;
   users = cont + cont2;
   promedio = cantidad / users;
   promedio2 = acum / cont;
   promedio3 = acum2 / cont2;
  
  }

  print('la cantidad total de aportes es de $cantidad entre $users y el promedio es $promedio');
  
  print('los que aportaron 5000 0 mas = $cont');
  print('total = $acum');
  print('promedio = $promedio2');

  print('los que aportaron menos de 5000 = $cont');
  print('total = $acum2');
  print('promedio = $promedio3');

}

