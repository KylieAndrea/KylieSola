import 'dart:io';

class Colaborador{

  String? _nombreCompleto;
  int? _tipoColaborador;
  double? _aporte = 0;

  Colaborador(String nom, int tipo, double apo){

    this._nombreCompleto = nom;
    this._tipoColaborador = tipo;
    this._aporte = apo;
    
  }

  String getNombreCompleto(){
    return _nombreCompleto!;
  }

  int getTipo(){
    return _tipoColaborador!;
  }

  double getAporte(){
    return _aporte!;
  }

  @override
  String toString(){
    return '{"nombre": ${_nombreCompleto}, "tipo de colaborador": ${_tipoColaborador}, "aporte": ${_aporte}}';
  }
}

class Recolecta{

  List<Colaborador>? _colaboradores = [];
  double? _montoRecaudar;
  double? _balance = 0;

  Recolecta( double monto, double balance){

    this._montoRecaudar = monto;
    this._balance = balance;
  }

  addColaborador(Colaborador colaborador){

    _colaboradores!.add(colaborador);
    _balance = _balance! + colaborador.getAporte();
  }

  bool finalizada(){

    if(_balance! >= _montoRecaudar!){
      return true;
    }else{
      return false;
    }
  }

  List<Colaborador> generosos(){

    List<Colaborador> nueva = [];

    for(int i = 0; i < _colaboradores!.length; i++){

      Colaborador a = _colaboradores![i];

      if(a.getAporte() > 10000){
        nueva.add(_colaboradores![i]);
      }
    }
    return nueva;
  }

  double recaudosGenerosos(){

    double total = 0;

    for(int i = 0; i < generosos().length; i++){

      total = total + generosos()[i].getAporte();
    }
    return total;
  }

  double promedioGenerosos(){
    return  recaudosGenerosos() / generosos().length;
  }

  double recaudoPorTipo(tipo){

    double aprendiz = 0;
    double instructor = 0;

    for(int i = 0; i < _colaboradores!.length; i ++){

      if(_colaboradores![i].getTipo() == 1){
        aprendiz = aprendiz + 1;
  
      }else(){
        instructor = instructor + 1;
      };
    }

    if( tipo == 1){
      return aprendiz;

    }else{
      return instructor;
    }
  }
}

void main() {

  Recolecta o1 = Recolecta(30000, 0);

  while(!o1.finalizada()){

    print("nuevo recaudo");

    print("ingrese su nombre");
    String nom = stdin.readLineSync()!;

    print("su tipo de aporte es de");
    int tipo = int.parse(stdin.readLineSync()!);

    print("por ultimo, la cantidad que desea aportar");
    double apo = double.parse(stdin.readLineSync()!);

    Colaborador o2 = Colaborador(nom, tipo, apo);
    o1.addColaborador(o2);

    print("total de su aporte");
    print(o2);
    print("---------------------------------------------------");

  }

  print("---------------------------------------------------");

  print("datos de las personas que portaron mas de 10.000");
  print(o1.generosos());

  print("promedio de las personas que aportaron mas de 10.000");
  print(o1.promedioGenerosos());

  print("suma total de los que aportaron mas de 10.000");
  print(o1.recaudosGenerosos());

  print("total de colaboradores");
  print(o1._colaboradores);


  print("listo");

}