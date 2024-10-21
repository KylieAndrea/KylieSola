class Person{}

class Car{

  Person? _propietario;

// add_ se utiliza para agregar la clase dentro de otra, tambien si estructura es similar a la de un setter
  void add_Person(Person p){
    this._propietario = p;
  }

}

void main() {

  Person kylie = new Person();

  Car kia = new Car();

// este metodo es opcional lo que significa que si se quiere se llena o no 
  kia.add_Person(kylie);

}

