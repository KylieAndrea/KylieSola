
puts "Nombre completo"
nc = gets.chomp

puts "numero de documento"
nd = gets.chomp.to_i

puts "digite el valor de su declaración de renta"
renta = gets.chomp.to_i 

if renta >=0 && renta <=10
    a1 = renta * 0.2
    a_1 = renta - a1
    puts"A la/el señor/a $nc con numero de documento #{nd} Se le ha aplicado a su declaracion de renta un descuento del 20%, su total a pagar queda en #{a_1}"

elsif renta >=11 && renta <=100

    double a2 = renta * 0.1
    double a_2 = renta - a2
    puts"A la/el señor/a #{nc} con numero de documento #{nd} Se le ha aplicado a su declaracion de renta un descuento del 10%,su total a pagar queda en #{a_2}"

elsif renta >=101 && renta<=1000
    
    a3 = renta * 0.05
    a_3 = renta - a3
    puts"A la/el señor/a #{nc} con numero de documento #{nd} se le ha aplicado a su declaracion de renta un descuento del 5%, su total a pagar queda en #{a_3}"

elsif renta >=1001
    
    a4 = renta* 0.01
    a_4 = renta - a4
    puts"A la/el señor/a #{nc} con numero de documento #{nd} se le ha aplicado a su declaracion de renta un descuento del 1%, su total a pagar queda en #{a_4}"

end