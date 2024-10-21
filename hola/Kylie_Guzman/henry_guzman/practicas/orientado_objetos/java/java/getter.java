
class Getter{
    public static void main(String[] arg){

        Tienda hi = new Tienda("BigMama");
        System.out.println(" la tienda se llama "+ hi.getName());

    }
}

class Tienda{

    private String name;

    Tienda(String n){
        this.name = n;
    }

    String getName(){
        return this.name;
    }

}