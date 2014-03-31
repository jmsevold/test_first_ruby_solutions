#def measure
  #start = Time.now
  #yield
  #end_time = Time.now
  #total = end_time - start
#end


def measure(n=0)
  if n == 0
    start = Time.now
    yield
    end_time = Time.now
    total = end_time - start
  else
    start = Time.now
    n.times { yield }
    end_time =Time.now
    total = end_time - start
    avg = total / n
  end
end