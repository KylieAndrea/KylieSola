import 'dart:io';
void main(){

  
  int monto = 0;

  List<int> total =[];

  print("ingrese cantidad que desea recaudar ");
    int valor1 = int.parse(stdin.readLineSync()!);

  do{

    print("ingrese el valor ");
    int valor = int.parse(stdin.readLineSync()!);
    monto = valor + monto;
    total.add(valor);

  }while (monto < valor1);

  print("la cantidad de aportos es de ${total.length} y son $total" );

}

