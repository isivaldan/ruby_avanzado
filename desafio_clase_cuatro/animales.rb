module Habilidades
  module Volador
    def volar
      'Estoy volandooooo!'
    end
    def aterrizar
      'Estoy cansado de volar, voy a aterrizar'
    end
  end
  module Nadador
    def nadar
      'Estoy nadando!'
    end
    def sumergir
      'glu glub glub glu'
    end
  end
  module Caminante
    def caminar
      'Puedo caminar!'
    end
  end
end
module Alimentacion
  module Herbivoro
    def comer
      'Puedo comer plantas!'
    end
  end
  module Carnivoro
    def comer
      'Puedo comer carne!'
    end
  end
end

#----
# Crear la clase Animal con un atributo nombre. Agregar un método getter para el atributonombre(1 punto)
# Crear las clases Ave, Mamifero e Insecto. Ambas heredan de Animal(1 punto)
# Crear las clases Pingüino, Paloma y Pato. Las tres heredan de Ave(1 punto)
# Crear las clases Perro, Gato y Vaca. Las tres heredan de Mamifero (1 punto)
# Crear las clases Mosca, Mariposa y Abeja. Las tres heredan de Insecto(1 punto)
# Incluye los módulos en cada subclase utilizando la instrucción include con el objetivo dedefinir las habilidades 
# y tipo de alimentación de cada animal (2 puntos)

class Animal
  attr_reader :nombre
  def initialize(nombre)
    @nombre = nombre
  end
end

class Ave < Animal
  include Habilidades
  include Alimentacion
end

class Mamifero < Animal
  include Habilidades
  include Alimentacion
end

class Insecto < Animal
  include Habilidades
  include Alimentacion
end

class Pinguino < Ave
  include Habilidades::Nadador
  include Habilidades::Caminante
  include Alimentacion::Carnivoro
end

class Paloma < Ave
  include Habilidades::Volador
  include Habilidades::Caminante
  include Alimentacion::Carnivoro
end

class Pato < Ave
  include Habilidades::Nadador
  include Habilidades::Caminante
  include Habilidades::Volador
  include Alimentacion::Herbivoro
end

class Perro < Mamifero
  include Habilidades::Nadador
  include Habilidades::Caminante
  include Alimentacion::Carnivoro
end

class Gato < Mamifero
  
  include Habilidades::Caminante
  include Alimentacion::Carnivoro
end

class Vaca < Mamifero
  
  include Habilidades::Caminante
  include Alimentacion::Herbivoro
end

class Mosca < Insecto
  include Habilidades::Volador
  include Habilidades::Caminante
  include Alimentacion::Carnivoro
end

class Mariposa < Insecto
  include Habilidades::Volador
  include Habilidades::Caminante
  include Alimentacion::Herbivoro
end

class Abeja < Insecto
  include Habilidades::Volador
  include Habilidades::Caminante
  include Alimentacion::Herbivoro
end



pato = Pato.new("PATO")

puts pato.nadar
puts pato.caminar
puts pato.comer