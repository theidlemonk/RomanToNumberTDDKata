class RomanAndNumberConversion

def toAppropriateValue(input)
  return to_roman(input) if input.is_a? Numeric
  return to_number(input)
end

def to_roman(num)
  return 'I'*num
end

def to_number(roman)
  return 1
end

end
