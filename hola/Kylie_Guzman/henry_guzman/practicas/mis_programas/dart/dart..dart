class Animal{
  String? color;
  String? nombre;
  
  Animal({required this.color, this.nombre});
}

void main(){
  
  Animal a = new Animal(color: 'amarillo', nombre: 'cam' );
  
  print('${a.color}, ${a.nombre}');
}