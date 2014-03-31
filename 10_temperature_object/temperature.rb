class Temperature
  def initialize(ops={})
    @temp = ops
  end
  
  def in_fahrenheit
    if @temp.has_key?(:c)
      celsius = @temp[:c]
      i = (celsius.to_f * 9.0)
      (i / 5.0) + 32.0
    else
      @temp[:f]
    end
  end
  
  def in_celsius
    if @temp.has_key?(:f)
      faren = @temp[:f]
      i = (faren - 32).to_f
      (i * 5.0) / 9.0
    else
      @temp[:c]
    end
  end
  
  def self.from_celsius(temp)
    @identifier = { c: temp }
  end
  
  def self.from_fahrenheit(temp)
    @identifier = { f: temp }
  end
  
  
  def self.in_fahrenheit
    if @identifier.has_key?(:c)
      celsius = @identifier[:c]
      i = (celsius.to_f * 9.0)
      (i / 5.0) + 32.0
    else
      @identifier[:f]
    end
  end
  
  def self.in_celsius
    if @identifier.has_key?(:f)
      faren = @identifier[:f]
      i = (faren - 32).to_f
      (i * 5.0) / 9.0
    else
      @identifier[:f] 
    end
  end
end


 


  
  


