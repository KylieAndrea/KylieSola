
personas = 0;
num = 0;

while personas < 101

  puts "has ingresado a un concurso"

  puts "ingresa tu nombre"
  name = gets.chomp

  num = num + 1
  personas = personas + 1
    
  if num == 28

    puts "#{name} has ganado!!"

  else
          
    puts "#{name} lamentablemente has perdido"
  end
    
end


