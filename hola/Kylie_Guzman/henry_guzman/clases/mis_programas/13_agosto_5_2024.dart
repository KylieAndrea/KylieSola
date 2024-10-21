class Animales{
  String? nombre;
  String? color;

}

class Perro extends Animales{
  int? edad_meses;
}

class Gato extends Animales{
  int? num_patas;
}

class Caballo extends Animales{
  int? peso;
}

class Vacunas extends Caballo { 
  static void manual() {
    print("2");
  }
}

void main(){
  Perro p = new Perro();
  p.nombre = 'firulais';
  p.color = 'amarillo';
  p.edad_meses = 34;

  Gato g = new Gato();
  g.nombre = 'michi';
  g.color = 'negro';
  g.num_patas = 4;

  Caballo c = new Caballo();
  c.nombre = 'tiro';
  c.color = 'marron';
  c.peso = 120;
  
  
print('el animal tiene por nombre ${p.nombre}, es de color ${p.color} y de ${p.edad_meses} meses de edad');
print('el animal tiene por nombre ${g.nombre}, es de color ${g.color} y de ${g.num_patas} patas');
print('el animal tiene por nombre ${c.nombre}, es de color ${c.color}, pesa ${c.peso} libras y tiene    vacunas');

}
