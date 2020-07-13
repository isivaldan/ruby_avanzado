# incluyendo módulos
module Water
  def rain
    puts "Lluviaaa!"
  end
  def snow
    puts "Nieveeeeee!"
  end
end
class Mage
  include Water
end
maga = Mage.new
# rain y snow son incluídos en la clase Mage como métodos de instancia, esto significa que primero debemos crear una instancia para poder llamarlos
maga.rain
maga.snow



# extendiendo módulos
module Water
  def rain
    puts "Lluviaaa!"
  end
  def snow
    puts "Nieveeeeee!"
  end
end
class Mage
  extend Water
end
# rain y snow son extendidos a la clase Mage, esto significa que pueden ser llamados sobre la clase.
Mage.rain
Mage.snow