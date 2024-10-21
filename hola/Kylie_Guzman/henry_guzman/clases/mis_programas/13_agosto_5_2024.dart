class Animales {
  String? nombre;
  String? color;
  }

class Domesticos extends Animales {
  int? edad;
}

class NoDomesticos extends Animales {
  bool? manada;
}

class Perro extends Domesticos {
  int? num_patas; 

  @override
  String toString() {
    return 'perro';
  }
}
class Gato extends Domesticos {
  String? raza;

   @override
  String toString() {
    return 'gato';
  }
}
 
class Leon extends NoDomesticos { 
  static void manual() {
    print("hola");
  }
  @override
  String toString(){
    return 'leon';
  }
}

void main() {
 Perro perro = new Perro();
 perro.nombre = "firulais"; 
 perro.color = "marron"; 
 perro.edad = 6;
 perro.num_patas = 4;

Gato gato = new Gato();
gato.nombre = "michu";
gato.color = "amarillo";
gato.edad = 2;
gato.raza = "esfinge";

Leon leon = new Leon();
leon.nombre = "sin nombre";
leon.color = "blanco";
leon.manada = true;


print('el animal (${perro.toString()}) tiene por nombre ${perro.nombre}, es de color ${perro.color}, tiene ${perro.edad} años de edad y tiene ${perro.num_patas} patas');
print('el animal (${gato.toString()}) tiene por nombre ${gato.nombre}, es de color ${gato.color}, tiene ${gato.edad} años de edad y su raza es ${gato.raza}');
print('el animal (${leon.toString()})tiene por nombre ${leon.nombre}, es de color ${leon.color} y pertenece a una manada = ${leon.manada}');
}