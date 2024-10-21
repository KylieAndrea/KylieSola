 
 puts "ingresar el numero de estudiantes"
 n = gets.chomp.to_i

for p in 1..n
    puts "nombre del estudiante"
    ne = gets.chomp

    puts "ingrese nota numero 1"
    n1 = gets.chomp.to_i

    puts "ingrese nota numero 2"
    n2 = gets.chomp.to_i

    puts "ingrese nota numero 3"
    n3 = gets.chomp.to_i
    
  suma = n1 + n2 + n3
    prom = suma / 3

    if prom >6

     puts "el estudiante #{ne} a aprobado con un promedio de #{prom} / 10"

    else

     puts "el estudiante #{ne} a aprobado con un promedio de #{prom} / 10"

    end 
end
