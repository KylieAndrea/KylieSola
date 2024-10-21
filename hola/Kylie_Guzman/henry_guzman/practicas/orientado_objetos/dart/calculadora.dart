import 'dart:io';

void main() {

  calcular();
}

void calcular() {

  double resultado = 0;
   
  while (true) {

    print ("ingrese primer numero");
    double num_1 = double.parse(stdin.readLineSync()!);

    print("ingrese segundo numero");
    double num_2 = double.parse(stdin.readLineSync()!);

    print("QUE DESEA REALIZAR");
    print(" 1: SUMAR");
    print(" 2: RESTAR");
    print(" 3: MULTIPLICAR");
    print(" 4: DIVIDIR");
    int kkk = int.parse(stdin.readLineSync()!);

double suma( double num_1, double num_2 ){
      return num_1 + num_2;
    }

    double resta( double num_1, double num_2 ){
      return num_1 - num_2;
    }

    double multiplicar( double num_1, double num_2 ){
      return num_1 * num_2;
    }

    double dividir( double num_1, double num_2 ){
      return num_1 / num_2;
    }


    if(kkk == 1){
      resultado = suma( num_1, num_2 );
    }else if( kkk == 2) {
      resultado = resta( num_1, num_2 );
    }else if( kkk == 3) {
      resultado = multiplicar( num_1, num_2 );
    }else if( kkk == 4) {
      resultado = dividir( num_1, num_2 );
    }else{
      print("error");
      break;
    }
    print("el resultado es $resultado");
  
    
  }
  
}