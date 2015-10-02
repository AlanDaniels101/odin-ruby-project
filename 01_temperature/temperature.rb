def ftoc(temp_in_farenheit)
  f = temp_in_farenheit
  c = (f - 32.0) * 5.0/9.0
  return c
end

def ctof(temp_in_celcius)
  c = temp_in_celcius
  f = c * 9.0/5.0 + 32.0
end