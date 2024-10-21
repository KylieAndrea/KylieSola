
class Setter{
    public static void main(String[] arg){

        Tienda hi = new Tienda();
        hi.setName("BigMama");
        System.out.println(" la tienda se llama "+ hi.getName());

    }
}

class Tienda{

    private String name;

    void setName(String n){
        this.name = n;
    }

    String getName(){
        return this.name;
    }

}