class Racional
  
  include Comparable
  include Enumerable
  
  def initialize(num, den)
    max = mcd(numerador, denominador)
    @numerador, @denominador = numerador/max, denominador/max
  end
  
  attr_reader :numerador, :denominador

  
  #codigo en http://fromgus.blogspot.com.es/2009/05/maximo-comun-divisor.html
  #Ejemplo : Ej: el maximo comun divisor entre 6 y 10: mcd(6:10) = mcd(10:6) = mcd(6:4) = (4:2) = mcd(2:0). Se calcula el MCD con el resto de dividir el valor absoluto del mayor por el  menor, y nos quedamo con el resto de la division y el valor menor que teníamos
  def mcd(a,b)
	d = a.abs, b.abs
	while d.min != 0
	  d = d.min, d.max % d.min
	end
	return d.max
  end

end
