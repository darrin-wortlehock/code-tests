class Car                                                                                                                                                                                                                                                                     
  
  attr_reader :engine                                                                                                                                                                                                                                                         
                                                                                                                                                                                                                                                                              
  def initialize(engine)
    @engine = engine
  end

  def move                                                                                                                                                                                                                                                                    
    engine.accelerate                                                                                                                                                                                                                                                         
  end                                                                                                                                                                                                                                                                         

end                                                                                                                                                                                                                                                                           

