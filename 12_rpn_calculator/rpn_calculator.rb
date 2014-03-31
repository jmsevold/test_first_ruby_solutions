class RPNCalculator 
  attr_reader :value
  
  def initialize
    @values = []
    @value = 0
  end
  
  def push(n)
    @values.push(n)
  end
  
  def plus
    sanity_check
    a = @values.pop
    b = @values.pop
    sum = a + b
    @value = sum
    @values.push(@value)
  end
 
  def minus
    sanity_check
    a = @values.pop
    b = @values.pop
    diff = b - a
    @value = diff
    @values.push(@value)
  end
  
  def times
    sanity_check
    a = @values.pop
    b = @values.pop
    product = b * a
    @value = product
    @values.push(@value)
  end
  
  def divide
    sanity_check
    a = @values.pop
    b = @values.pop
    quo = b.to_f / a.to_f
    @value = quo
    @values.push(@value)
  end
  
  def sanity_check
    if @values.length < 2
      raise "calculator is empty"
    end
  end
    
  def tokens(equation)
    tokens = equation.split(" ")
    ops = '+ * / -'
    a = tokens.map do |i|
      if ops.include?(i)
        i.to_sym
      else
        i.to_i
      end
    end #end of block
    a
  end #end of tokens
end
