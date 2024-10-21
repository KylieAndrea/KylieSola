
class Empleo
    attr.accessor :tipo_de_empleo, :jornada_horas, :salario
end

class Transporte
    attr.accessor :tipo, :tiempo_horas
end

class Actividad
    attr.accessor :hobby, :tiempo_horas
end


luis = new Empleo

luis.tipo_de_empleo = 'presencial'
luis.joranada_horas = 6
luis.salario = 1200000

sofia = new Transporte 

sofia.tipo = 'bus'
sofia.tiempo_horas = 2

nana = new Actividad

nana.hobby = 'cantar'
nana.tiempo_horas = 1 

