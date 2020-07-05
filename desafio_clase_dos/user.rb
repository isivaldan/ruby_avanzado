require_relative './cuenta_bancaria.rb'

class Usuario
  attr_accessor :nombre, :cuenta_tr
  def initialize (nombre, cuenta_tr)
      @nombre = nombre
      @cuenta_tr = cuenta_tr
  end

  def saldo_total 
      @cuenta_tr.map { |cuenta| cuenta.saldo }.sum
  end
end
cuenta1 = CuentaBancaria.new("Falaferia",123456789,10000000)
cuenta2 = CuentaBancaria.new("TioPiñiRoban3",123456789,0)
usuario1 = Usuario.new('Isi', [cuenta1, cuenta2])
print usuario1.saldo_total
