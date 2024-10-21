
class Name 

   sttr.accessor :nombre_marca


   def initialize(nombre_marca)
   self.nombre_marca = nombre_marca
   end
  
end

class Precio 

  sttr.accessor :camisa_oversize, :camisa_normal

  def initialize(camisa_oversize, camisa_normal)
    self.camisa_oversize = camisa_oversize
    self.camisa_normal = camisa_normal

  end
end

class Estampado
    
  sttr.accessor :frace_a_estampar, :dibujo_a_estampar, :talla, :genero, :cantidad

  def initialize(frace_a_estampar, dibujo_a_estampar)
    self.frace_a_estampar = frace_a_estampar
    self.dibujo_a_estampar = dibujo_a_estampar

  end
end

class tela 

  strr.accessor :nombre, :cantidad_metros, :color

  def initialize(nombre)
    self.nombre = nombre

  end
end
  


run = new Name();
run.nombre_marca = "HURTADOS"

run =  Name("hurtados");


juan = new Estampado("ojos brillantes", "'las miradas dicen lo que las palabras no pueden'")

juan.talla = "XL"
juan.genero = "masculino"
juan.cantidad = 45

sebastian = new Tela("lino")

sebastian.cantidad_metros = 300
sebastian.color = "blanco"


puts "la marca de camisetas estampadas #{run.nombre_marca} estara realizando con #{sebastian.cantidad_metros} de tela de #{sebastian.nombre} en color #{sebastian.color}"

puts "la marca de camisetas estampadas #{run} estara realizando con #{sebastian.cantidad_metros} de tela de #{sebastian.nombre} en color #{sebastian.color}"

puts "camisetas con un estampado de #{juan.dibujo_a_estampar} y debajo la frace #{juan.frace_a_estampar}"

ade = Precio()

ade.camiseta_normal = 10
ade.camiseta_oversize = "depende de la talla"


puts "las camisetas #{run.nombre_marca} tienen como precio #{ade.camiseta_normal} dolares la normal mientras que la oversize #{ade.camiseta_oversize} para el precio"

puts "las camisetas #{run} tienen como precio #{ade.camiseta_normal} dolares la normal mientras que la oversize #{ade.camiseta_oversize} para el precio"
