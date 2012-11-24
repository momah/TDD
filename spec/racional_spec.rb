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
 


end
