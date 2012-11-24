class Racional
  
  include Comparable
  include Enumerable
  
  def initialize(numerador, denominador)
    	@numerador, @denominador = numerador, denominador
  end
  
  attr_reader :numerador, :denominador
  

end
