require 'rspec'
require 'car'

describe Car do
  
  let(:engine) { double("Engine") }

  subject { Car.new(engine) }
  
  it "moves by accelerating the engine" do
    engine.should_receive(:accelerate)
    subject.move 
  end

end
