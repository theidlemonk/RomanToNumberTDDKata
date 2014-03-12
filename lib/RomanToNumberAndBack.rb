class RomanAndNumberConversion

def toAppropriateValue(input)
  return to_roman(input) if input.is_a? Numeric
  return to_number(input)
end

MapRomansAndNumbers = {
  'M' => 1000,
  'CM' => 900,
  'D' => 500,
  'CD' => 400,
  'C' => 100,
  'XC' => 90,
'L' => 50,
'XL' => 40,
'X' => 10,
'IX' => 9,
'V' => 5,
'IV' => 4,
'I' => 1
}

def to_roman(num)
  result = ''
  MapRomansAndNumbers.each do |roman, number|
  while num >= number do
    result += roman
    num -= number
  end
end
  return result
end

def to_number(roman)
   result = 0
     roman.each_char do |roman_char|
     result += MapRomansAndNumbers[roman_char]
   end
   MapRomansAndNumbers.each do |key , value|
    result -= 2 * MapRomansAndNumbers[key[0]] if roman.include? key and key.length == 2
   end
 return result
end

end
