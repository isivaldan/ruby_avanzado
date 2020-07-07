
require_relative './carta.rb'

class Baraja
  attr_reader :cartas
  def initialize
    
    c = ["C", "D", "E", "T"]
    num=[1,2,3,4,5,6,7,8,9,10,11,12,13]
    @cartas=[]
    
    13.times do |i|
      4.times do |j|
        @cartas << Carta.new(num[i], c[j])
      end
    end
  end
  def barajar 
     @cartas.shuffle!
      puts @cartas
  end
  def sacar 
     @cartas.pop
  end
  def repartir_mano 
    5.times do  |i|
      puts @cartas[i].to_s
    end
     end
end

 baraja1 = Baraja.new
 puts "IMPRIMIENDO BARAJAR" 
 puts baraja1.barajar
 puts "IMPRIMIENDO SACAR"
  puts baraja1.sacar
  baraja1.repartir_mano