
class Mconstructor {
    public static void main(String[] arg){

        Ropa camisa = new Ropa("negro", "patprimo");
        camisa.precio = 30000;
        
        Ropa zapatos = new Ropa("rojo", "converse");
        zapatos.precio = 150000;
        
        int suma = camisa.precio + zapatos.precio;
        
        // en java se concatena con + por ejemplo:
        System.out.println("su camisa "+camisa.marca+" color "+camisa.color+" de precio "+camisa.precio+" y sus zapato "+zapatos.marca+" color "+zapatos.color+" de precio "+camisa.precio+", juntos tienen un total de "+suma);
    }
}

class Ropa{

    String color = "";
    int precio = 0;
    String marca = "";

    Ropa( String color, String marca){}
}

