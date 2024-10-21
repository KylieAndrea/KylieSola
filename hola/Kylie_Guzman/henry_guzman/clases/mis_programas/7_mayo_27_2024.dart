import 'dart:io';

void main(){

  print('Nombre completo');
  String? nc = stdin.readLineSync()!; 

  print('Numero de documento');
  int? nd = int.parse(stdin.readLineSync()!); 

  print('Digite el valor de su declaración de renta');
  int? renta = int.parse(stdin.readLineSync()!);

  if (renta >=0 && renta <=10){
    double a1 = renta/100*20;
    double a_1 = renta - a1;
    print('A la/el señor/a $nc con numero de documento $nd Se le ha aplicado a su declaracion de renta un descuento del 20%, su total a pagar queda en $a_1');

  }else if(renta >=11 && renta <=100){;

    double a2 = renta/100*10;
    double a_2 = renta - a2;
    print('A la/el señor/a $nc con numero de documento $nd Se le ha aplicado a su declaracion de renta un descuento del 10%,su total a pagar queda en $a_2');

  }else if(renta >=101 && renta<=1000){

    double a3 = renta/100*5;
    double a_3 = renta - a3;
    print('A la/el señor/a $nc con numero de documento $nd se le ha aplicado a su declaracion de renta un descuento del 5%, su total a pagar queda en $a_3');

  }else if(renta >=1001){

    double a4 = renta/100*1;
    double a_4 = renta - a4;
    print('A la/el señor/a $nc con numero de documento $nd se le ha aplicado a su declaracion de renta un descuento del 1%, su total a pagar queda en $a_4');

  };

}