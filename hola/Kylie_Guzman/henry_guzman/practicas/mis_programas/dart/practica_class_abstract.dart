

abstract class Centros_de_salud{

  void nombre();
  void direccion();
  void nEspecialistas();
  void pacientes_mensuales();

}

class Hospital implements Centros_de_salud {
  
  void nombre(){
    print("Hospital Camino Bosque de Maria");
  }

  void direccion(){
    print("dg. 64b #9-66");
  }

  void nEspecialistas(){
    print(29);
  }

  void pacientes_mensuales(){
    print(250);
  }

  void paciente1;
}

class Clinica implements Centros_de_salud{

  void nombre(){
    print("clínica general del Norte");
  }   

  void direccion(){
    print("Cl. 70 #48-35");
  }

  void nEspecialistas(){
    print(14);
  }

  void pacientes_mensuales(){
    print(120);
  }

  void paciente2;
}

class Centro implements Centros_de_salud{

  void nombre(){
    print("centro medico chicago");
  }   
  void direccion(){
    print("Cra. 58 #70-129");
  }

  void nEspecialistas(){
    print(23);
  }

  void pacientes_mensuales(){
    print(200);
  }

  void paciente3;
}

void main() {

  Hospital p1 = new Hospital();
  p1.paciente1 = "Camila";

  print("usted ingreso a un centro de salud (${p1})");

  Clinica p2 = new Clinica();
  p2.paciente2 = "Jose michael";

  print("usted ingreso a un centro de salud (${p2})");

  Centro p3 = new Centro();
  p3.paciente3 = "Alejandro";

  print("usted ingreso a un centro de salud (${p3})");

}

