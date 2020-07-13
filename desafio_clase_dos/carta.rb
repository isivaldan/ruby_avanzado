class Carta
  #getter y setter ordenado
  attr_accessor :numero,:pinta
  
  def initialize(numero, pinta)
    @numero = numero
    @pinta = pinta
    if numero <1 ||  numero > 13
      raise RangeError, "Ingrese un valor del 1 al 13 "
    end
    if pinta !="C" && pinta !="D" && pinta !="E" && pinta !="T"
      raise RangeError, "Las pintas son C, D, E, T"
    end
  end
  
  def to_s
    puts "numero:#{numero} | pinta:#{pinta} "  
    
  end
  
end
#carta1 = Carta.new(14, "G")
carta2 = Carta.new(13, "C")




