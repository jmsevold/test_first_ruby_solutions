def ftoc(faren)
  a = (faren - 32).to_f
  (a * 5.0) / 9.0
end
  
def ctof(cel)
  a = (cel.to_f * 9.0)
  (a / 5.0) + 32.0 
end