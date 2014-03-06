require 'spec_helper'

describe RomanAndNumberConversion do

convert = RomanAndNumberConversion.new

specify { convert.toAppropriateValue('I').should == 1 }
specify { convert.toAppropriateValue(1).should == 'I' }
specify { convert.to_roman(2).should == 'II' }
specify { convert.to_roman(3).should == 'III' }

end
