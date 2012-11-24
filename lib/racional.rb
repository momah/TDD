class Racional
  
  include Comparable
  include Enumerable
  
  def initialize(num, den)
    max = mcd(numerador, denominador)
    @numerador, @denominador = numerador/max, denominador/max
  end
  
  attr_reader :numerador, :denominador


  def mcd(a,b) #codigo en http://fromgus.blogspot.com.es/2009/05/maximo-comun-divisor.html
	d = a.abs, b.abs
	while d.min != 0
	  d = d.min, d.max % d.min
	end
	return d.max
  end

  def num
    	@numerador
  end
  
  def denom
    	@denominador
  end
 
  def fraccion
    	return "#{self.num()} / #{self.denom()}"
  end

  def flotante
	return self.num().to_f / self.denom().to_f
  end
end
