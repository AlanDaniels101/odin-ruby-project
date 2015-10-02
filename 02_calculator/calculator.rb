def add(a,b)
  a+b
end

# Subtract b from a
def subtract(a,b)
  a-b
end

def sum(arr)
  sum = 0
  arr.each do |i|
    sum += i
  end
  return sum
end

def multiply(arr)
  product = 1
  if arr.empty?
    return product = 0
  end
  arr.each do |i|
    product *= i
  end
  return product
end

def power(a,b)
  a ** b
end

def factorial(a)
  if a == 0
    return 1
  else
    return a*factorial(a-1)
  end
end

