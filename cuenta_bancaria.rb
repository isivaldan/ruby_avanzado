class CuentaBancaria
    attr_accessor :nombre_de_usuario,
                  :numero_de_cuenta,
                  :vip
    def initialize(nombre_de_usuario, numero_de_cuenta, vip = 0)
        @nombre_de_usuario = nombre_de_usuario
        @numero_de_cuenta = numero_de_cuenta
        if numero_de_cuenta.digits.count != 8
            raise RangeError, "La cantidad de digitos es distinta a 8"
        end
        @vip = vip    
    end
    
    def cuentas_bancarias
        if vip != 0
            puts "1-#{numero_de_cuenta}"
        else
            puts "0-#{numero_de_cuenta}"
        end
    end
end

cuentavip = CuentaBancaria.new('Isi', 85632449, 1)
cuentanovip = CuentaBancaria.new('Alex', 78978912)
puts cuentavip.cuentas_bancarias
puts cuentanovip.cuentas_bancarias