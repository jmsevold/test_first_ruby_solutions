def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

def sum(array)
  total = 0
  array.each do |x|
    total += x
  end
  total
end

def multiply(*numbers)
  total = 1
  numbers.each do |number|
    total *= number
  end
  total
end

def power (a,b)
  a ** b
end




def factorial(n)
  if n == 0
    return 0
  else
    total = 1
    (1..n).each do |i|
      total *= i
    end
  end
  total
end


