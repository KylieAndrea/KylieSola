abstract class Transporte {
  void deliver();
}

class Truck implements Transporte {
  @override
  void deliver() {
    print('entrega en caja mediante camión');
  }
}

class Ship implements Transporte {
  void deliver() {
    print('entrega en contenedor mediante barco');
  }
}

abstract class Logistics {
  void planDelivery();
  Transporte createTransporte();
}

class RoadLogisttics extends Logistics {
  @override
  Transporte createTransporte() {
    return Truck();
  }

  @override
  void planDelivery() {}
}

class SeaLogisttics extends Logistics {
  @override
  Transporte createTransporte() {
    return Ship();
  }

  @override
  void planDelivery() {}
}

class MyApp {
  Logistics? logistics;

  MyApp(int num) {
    if (num == 1) {
      this.logistics = RoadLogisttics();
    } else {
      this.logistics = SeaLogisttics();
    }
  }

  void funciona() {
    Transporte transporte = logistics!.createTransporte();
    transporte.deliver();
  }
}

void main() {
  MyApp myApp = MyApp(2);
  myApp.funciona();
}
