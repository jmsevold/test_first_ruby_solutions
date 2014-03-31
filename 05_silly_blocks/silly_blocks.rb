#reverser { 'hello'},  reverser { 'hello dolly'}
def reverser
  reversed = yield.split.map do |words|
    words.reverse
  end
  reversed.join(" ")
end

#def reverser(&block)
  #block.call.reverse
#end

def adder(n = 1,&block)
  block.call + n
end

def repeater(x = nil) # assume x is a number greater than 0
  if x
    x.times { yield }
  else
    yield
  end

  # if yield.class == String
  #   !(yield.nil?)
  # else
  #   (x - 1).times { yield }
  # end
end