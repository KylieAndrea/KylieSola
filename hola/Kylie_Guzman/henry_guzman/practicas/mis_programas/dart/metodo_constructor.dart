void main() {

        Ropa camisa = new Ropa("negro", "patprimo");
        camisa.precio = 30000;
        
        Ropa zapatos = new Ropa("rojo", "converse");
        zapatos.precio = 150000;
        
        int suma = camisa.precio + zapatos.precio;
        
        print("su camisa ${camisa.marca} color ${camisa.color} de precio ${camisa.precio} y sus zapatos ${zapatos.marca} color ${zapatos.color} de precio ${camisa.precio}, juntos tienen un total de $suma");
    }


class Ropa{

    String color = "";
    int precio = 0;
    String marca = "";

    Ropa(this.color, this.marca){}
}