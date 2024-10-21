while true

    puts 'DATOS DEL USUARIO'

    puts 'nombre'
    n = gets.chomp

    puts 'edad'
    e = gets.chomp.to_i

    puts 'documento'
    d = gets.chomp.to_i

    puts 'DATOS PARA AVERIGUAR EL PESO IDEAL'

    puts 'peso actual'
    p = gets.chomp

    puts 'estatura actual'
    al = gets.chomp

    m = al * al
    r = p / m

    if r < 18.5 

       puts 'Su peso no es adecuando y esta catalogado como "bajo peso" que significa que en muchas ocasiones estar delgado es sinonimo de salud pero tener bajo peso puede ser algo preocupante. Esto sucede cuando se debe a una mala nutrición, un embarazo en caso de mujeres o a otros problemas de salud.s'
    elsif r >= 18.5 && r < 24.9

        puts 'Su peso es adecuando y esta catalogado como "saludable" que significa que nos mantenernos en un buen estado de salud y calidad de vida. No existen riesgos para la salud de su persona.'
    elsif r >= 24.9 && r <= 29.9

        puts 'Su peso no es adecuando y esta catalogado como "sobre peso" que significa una acumulación anormal o excesiva de grasa que puede ser perjudicial para la salud. Una vida sedentaria y comer demasiado y mal son las causas más comunes.'
    elsif r >= 30.0 && <= 34,9

        puts 'Su peso no es adecuando y esta catalogado como "obesidad grado 1" que significa que Cuando esto sucede, además de un problema estético, nos encontramos ante un potencial riesgo para la salud. Ya que trata del grado más bajo de obesidad'
    elsif r >= 35.0 && <= 39,9

        puts 'Su peso no es adecuando y esta catalogado como "obesidad grado 2" que significa que Es nesesario realizar pruebas adicionales para descartar posibles complicaciones metabólicas y enfermedades relacionadas con la obesidad en este grado.'
    elsif r >= 40.0

        puts 'Su peso no es adecuando y esta catalogado como "obesidad grado 3" que significa que significa que es el más grave, ya que, en este nivel, el exceso de peso pone en riesgo la salud y tiende a acortar la vida. contactese con un medico urgente'
    else

        puts 'los datos que ingreso en peso y altura son invalidos, vuelva a intentarlo'
    end

    puts 'el usuario #{n} de #{e} años con numero de documento #{d} a realizado el test para averiguar su peso ideal correctamente'
    

end
