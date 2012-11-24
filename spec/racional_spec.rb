require "rspec"
require "racional"

describe Racional do

  before :each do
	@racional = Racional.new(2,8)
  end

  it "Debe existir un numerador" do
	@racional.respond_to?(:numerador).should be_true
  end
  
  it "Debe existir un denominador" do
	@racional.respond_to?(:denominador).should be_true
  end
 
  it "Debe de estar en su forma reducida" do
	@racional.numerador.should == 1
    	@racional.denominador.should == 4
  end

  it "Se debe invocar al metodo num() para obtener el numerador" do
	@racional.num().should_not be_nil
   end

  it "Se debe invocar al metodo denom() para obtener el denominador" do
	@racional.dem().should_not be_nil
  end

  it "Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
    	@racional.fraccion.should == '1/4'
  end

  it "Se debe mostar por la consola la fraccion en formato flotante" do
    	@racional.flotante.should == '0.5'
  end

  it "Se debe comparar si dos fracciones son iguales con ==" do
    	@racional.should == Racional.new(5, 20)
  end

  it "Se debe calcular el opuesto de una fraccion con -" do
	-@racional = Racional.new(-1,4)
  end
end
