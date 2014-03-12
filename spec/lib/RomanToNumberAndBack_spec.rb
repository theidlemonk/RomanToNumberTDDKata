require 'spec_helper'

describe RomanAndNumberConversion do

convert = RomanAndNumberConversion.new

specify { convert.toAppropriateValue('I').should == 1 }
specify { convert.toAppropriateValue(1).should == 'I' }
specify { convert.to_roman(2).should == 'II' }
specify { convert.to_roman(3).should == 'III' }
specify { convert.to_roman(4).should == 'IV'}
specify { convert.to_roman(5).should == 'V'}
specify { convert.to_roman(6).should == 'VI'}
specify { convert.to_roman(7).should == 'VII'}
specify { convert.to_roman(9).should == 'IX'}
specify { convert.to_roman(10).should == 'X'}
specify { convert.to_roman(14).should == 'XIV'}
specify { convert.to_roman(40).should == 'XL'}
specify { convert.to_roman(50).should == 'L'}
specify { convert.to_roman(90).should == 'XC'}
specify { convert.to_roman(100).should == 'C'}
specify { convert.to_roman(400).should == 'CD'}
specify { convert.to_roman(500).should == 'D'}
specify { convert.to_roman(900).should == 'CM'}
specify { convert.to_roman(1000).should == 'M'}

specify { convert.to_number('II').should == 2 }
specify { convert.to_number('III').should == 3 }
specify { convert.to_number('V').should == 5 }
specify { convert.to_number('VI').should == 6 }
specify { convert.to_number('X').should == 10 }
specify { convert.to_number('L').should == 50 }
specify { convert.to_number('C').should == 100 }
specify { convert.to_number('D').should == 500 }
specify { convert.to_number('M').should == 1000 }
specify { convert.to_number('MMDCLXVI').should == 2666 }
specify { convert.to_number('IV').should == 4 }
specify { convert.to_number('IX').should == 9 }
specify { convert.to_number('XL').should == 40 }
specify { convert.to_number('XC').should == 90 }
specify { convert.to_number('CD').should == 400 }
specify { convert.to_number('CM').should == 900 }
specify { convert.to_number('MMMCMXCIX').should == 3999 }
end
