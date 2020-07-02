
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
c = ["C", "D", "E", "T"]

cartas=[]

5.times do |e|
  numero = rand (1..13)
  pinta = ['C', 'D', 'E', 'T'].sample
  puts cartas << Carta.new(numero, pinta)
end
