import 'dart:math';
import 'dart:io';

void main(List<String> arguments) {

  var users_wins = 0;
  var computer_wins = 0;
  var empates = 0;

  List opciones = ['piedra', 'papel', 'tijera'];

  while(true){

    print ('elige piedra, papel, tijera o presione la tecla "x" para salir del juego.');
    var eleccion_users = stdin.readLineSync()!.toLowerCase();

    if (eleccion_users.toString() == 'x' ){
      break; 

    }if (!opciones.contains(eleccion_users)){
      print ('ERROR!');
      continue;
    }

    Random random = Random();
    var random_num = random.nextInt(3);
    var eleccion_ordenador = opciones[random_num];

    print('el ordenador eligio $eleccion_ordenador');

    if (eleccion_users =='piedra' && eleccion_ordenador == 'tijera'){

      print ('bien hecho!');
      users_wins ++;

    }else if (eleccion_users =='papel' && eleccion_ordenador == 'piedra'){

      print ('bien hecho!');
      users_wins ++;

    }else if (eleccion_users =='tijera' && eleccion_ordenador == 'papel'){

      print ('bien hecho!');
      users_wins ++;

    }else if (eleccion_users == eleccion_ordenador){
    
      print ('ha sido un empate');
      empates ++;
    
    }else if (eleccion_users =='tijera' && eleccion_ordenador == 'piedra'){
      
      print('puedes hacerlo mejor');
      computer_wins ++;

    }else if (eleccion_users =='piedra' && eleccion_ordenador == 'papel'){
      
      print('puedes hacerlo mejor');
      computer_wins ++;

    }else if (eleccion_users =='papel' && eleccion_ordenador == 'tijera'){
      
      print('puedes hacerlo mejor');
      computer_wins ++;

    };

  }
  print ('tu = $users_wins puntos');
  print ('el ordenador = $computer_wins puntos');
  print ('empates = $empates');

    if(users_wins > computer_wins){

      print('     has ganado!! ');

    }else if(users_wins < computer_wins){

      print('     has perdido :( ');

    }else (){

      print ('ha sido un empate');

    };
}

