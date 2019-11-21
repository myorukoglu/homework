require '../lib/calculator'

RSpec.describe Calculator do
  let (:calculation1){Calculator.new(5,10)}

  it '.new creates a new instance of calculator' do
    expect(calculation1).to be_an_instance_of Calculator
  end
  
  it '#num1 should return the value of num1' do 
    expect(calculation1.num1).to eql(5)
  end	

  it '#num2 should return the value of num2' do 
    expect(calculation1.num2).to eql(10)
  end	
  it '#sum should return the sum of num1 and num2' do 
    expect(calculation1.sum).to eql(calculation1.num1 + calculation1.num2)
  end	
  it '#diff should return the diff num2 from num1' do 
    expect(calculation1.diff).to eql((calculation1.num1 - calculation1.num2).abs)
  end	
  it '#multiply should return the product of num1 and num2' do 
    expect(calculation1.multiply).to eql(calculation1.num1 * calculation1.num2)
  end	
  it '#divide should return the quotient of num1 divided num2' do 
    expect(calculation1.divide).to eql(calculation1.num1.to_f / calculation1.num2.to_f)
  end	

end