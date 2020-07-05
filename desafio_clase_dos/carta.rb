class Carta

  attr_accessor :numero,
                :pinta
  
    def initialize(numero, pinta)
      @numero = numero
      @pinta = pinta
    end
  
    def to_s
      puts "numero:#{numero} | pinta:#{pinta} "  
  
    end
  
end




  