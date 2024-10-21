public class practicas {
    
    public static void main(String[] arg){

        Trabajo persona1 = new Trabajo("Mcdonald's", "carrera 56", "mecer@ y cociner@", 1500000);
        persona1.nombres = "Kylie Andrea";
        persona1.apellidoS = "Guzman Herrera";
        persona1.edad = 17;
        persona1.fecha_de_naciemiento = "17/11/2006";
        persona1.experiencias = "tecnico en comercializacion de alimentos";
        persona1.correo = "kylieguzmanh@gmail.com";

        System.out.println("  la empresa de "+persona1.empresa+" ubicada en "+persona1.direccion+" busca "+persona1.puesto+" brindandole un salario de "+persona1.salario);
        System.out.println("posible empleado");
        System.out.println("  "+persona1.nombres + persona1.apellidoS+ " de "+ persona1.edad+ " años, nacida en " +persona1.fecha_de_naciemiento+ ". estudio "+ persona1.experiencias+ " y su correo es "+ persona1.correo);
    }
}

class Trabajo{

    String nombres;
    String apellidoS;
    int edad; 
    String fecha_de_naciemiento;
    String experiencias;
    String correo;

    String empresa;
    String direccion;
    String puesto;
    int salario;

    Trabajo(String empresa,  String direccion, String puesto, int salario){

        this.empresa = empresa;
        this.direccion = direccion;
        this.puesto = puesto;
        this.salario = salario;
    }
}