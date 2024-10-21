
class Calculadora{

  double? num1;
  double? num2;
  String? opcions;

  Calculadora(double num1, double num2,String opcions){

    this.num1 = num1;
    this.num2 = num2;
    this.opcions = opcions;
  }

  double sumar() {

    double sumar = num1! + num2!;
    return sumar;
  }

  double restar() {

    double restar = num1! - num2!;
    return restar;
  }

  double multiplicar() {

    double multiplicar = num1! * num2!;
    return multiplicar;
  }

  double dividir() {

    double dividir = num1! / num2!;
    return dividir;
  }



  void calcular(){

    if (opcions == "s"){

      print ("el resultado de la suma es ${sumar()}");

    }else if(opcions  == "r"){

      print ("el resultado de la resta es ${restar()}");

    }else if(opcions  == "m"){

      print ("el resultado de la multiplicacion es ${multiplicar()}");

    }else if(opcions == "d"){

      print ("el resultado de la divicion es ${dividir()}");

    }

  }

}

void main(){

  Calculadora mimi = new Calculadora(8, 4, "d");
  mimi.calcular();
}