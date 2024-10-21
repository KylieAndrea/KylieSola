import 'dart:io';

void main(){

  while(true){

    print("DATOS DEL USUARIO");

    print("nombre");
    String? n = stdin.readLineSync();

    print("edad");
    int e = int.parse(stdin.readLineSync()!);

    print("documento");
    int d = int.parse(stdin.readLineSync()!);

    print("DATOS PARA AVERIGUAR EL PESO IDEAL");

    print("peso actual");
    double p = double.parse(stdin.readLineSync()!);

    print("estatura actual");
    double al = double.parse(stdin.readLineSync()!);

    double m = al * al;
    double r = p / m;
    print("porcentaje $r");

      if( r < 18.5 ){
        
        print("Su peso no es adecuando y esta catalogado como 'bajo peso' que significa que en muchas ocasiones estar delgado es sinonimo de salud pero tener bajo peso puede ser algo preocupante. Esto sucede cuando se debe a una mala nutrición, un embarazo en caso de mujeres o a otros problemas de salud.");
      }else if( r >= 18.5 && r < 24.9 ){
        
        print("Su peso es adecuando y esta catalogado como 'saludable' que significa que nos mantenernos en un buen estado de salud y calidad de vida. No existen riesgos para la salud de su persona.");
      }else  if( r >= 24.9 && r <= 29.9 ){
        
        print("Su peso no es adecuando y esta catalogado como 'sobre peso' que significa una acumulación anormal o excesiva de grasa que puede ser perjudicial para la salud. Una vida sedentaria y comer demasiado y mal son las causas más comunes.");
      }else if( r >= 30.0 && r <= 34.9 ){
        
        print("Su peso no es adecuando y esta catalogado como 'obesidad grado 1' que significa que Cuando esto sucede, además de un problema estético, nos encontramos ante un potencial riesgo para la salud. Ya que trata del grado más bajo de obesidad");
      }else if( r >= 35.0 && r < 39.9 ){
        
        print("Su peso no es adecuando y esta catalogado como 'obesidad grado 2' que significa que Es nesesario realizar pruebas adicionales para descartar posibles complicaciones metabólicas y enfermedades relacionadas con la obesidad en este grado.");
      }else if( r >= 40 ){

        print("Su peso no es adecuando y esta catalogado como 'obesidad grado 3' que significa que es el más grave, ya que, en este nivel, el exceso de peso pone en riesgo la salud y tiende a acortar la vida. contactese con un medico urgente");
      }else{

        print('los datos que ingreso en peso y altura son invalidos, vuelva a intentarlo');
      }
   
    print ("el usuario $n de $e años con numero de documento $d a realizado el test para averiguar su peso ideal");

  }
 
}