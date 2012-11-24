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

  it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
	Racional.new(-1,4).abs.should == @racional
  end

  it "Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
    	@racional.reciprocal.should == Racional.new(4,1)
  end

  it "Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
	racional2 = Racional.new(1,4)  	
	(@racional +racional2).should == '2/4'
  end

  it "Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
	racional2 = Racional.new(1,8)    
	(@racional -racional2).should == '1/8'
  end
  
  it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do
    	racional2 = Racional.new(1,4)
    	(@racional *racional2).should == '1/8'
  end
  
  it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
    	racional2 = Racional.new(2,4)
    	(@racional /racional2).should == '1/2'
  end

  it "Se debe calcular el resto dos fracciones con % y dar el resultado de forma reducida" do
	racional1 = Racional.new(3,4)	
	racional2 = Racional.new(2,3)
    	(racional1 %racional2).should == '1/1'
  end

  it "Se debe de poder comprobar si una fracion es menor que otra" do
    	(@racional < Racional.new(1,2)).should be_true
  end
  
  it "Se debe de poder comprobar si una fracion es mayor que otra" do
    	(@racional > Racional.new(1,2)).should be_false
  end
  
  it "Se debe de poder comprobar si una fracion es menor o igual que otra" do
    	(@racional <= Racional.new(1,4)).should be_true
  end
  
  it "Se debe de poder comprobar si una fracion es mayor o igual que otra" do
	(@racional >= Racional.new(1,4)).should be_true
  end
end
