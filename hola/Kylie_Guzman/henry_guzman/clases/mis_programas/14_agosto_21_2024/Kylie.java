public class Kylie {

    public static void main(String[] arg) {
        
        Publico car1 = new Publico(109);
        car1.empresa = "kia";
        car1.ciudad = "soledad";
        car1.ruta = "no";
        
        Publico car2 = new Publico(130);
        car2.empresa = "toyota";
        car2.ciudad = "barranquilla";
        car2.ruta = "se";
        
        Particular car3 = new Particular(2002);
        car3.empresa = "hyundai";
        car3.ciudad = "soledad";
        car3.color = "azul";
        car3.placa = "ABC123";
        
        Particular car4 = new Particular(2007);
        car4.empresa = "BMW";
        car4.ciudad = "barranquilla";
        car4.color = "blanco";
        car4.placa = "DEF456";
        
        System.out.println("este carro es un "+car4.empresa+" de "+car4.ciudad+" color "+car4.color+" y con placa "+car4.placa);
        
    }        
}        

class Transporte {
    
    public String empresa = "";
    public String ciudad = "";
    
    public String getInfo (){
        return empresa+ "-" +ciudad;
    }
    
}
class Publico extends Transporte {
    
    private int nInterno = 0;
    public String ruta = "";
    
    Publico(int nInterno){
        this.nInterno = nInterno;
    }
    
    public int getCodigo (){
        return nInterno;
        
    }
}
class Particular extends Transporte {
    
    public String placa = "";
    public String color = "";
    private int modelo = 0;
    
    public void setModelo(int modelo) {
        this.modelo = modelo;
    }
   
    @Override
    public String getInfo (){
        return this.ciudad;
    }
    
    Particular(int modelo){
        this.modelo = modelo;
    }
    
    public int getRtm(){
        return this.modelo + 5;
    }
}

