# Use RSpec to test the following exercise! You may wish to wrap the methods below in a class to help facilitate this.
require 'rspec'
# First, implement the is_prime? method below. It should accept a number as an argument and return
# true if the number is prime and false if it is not. A prime number is a number that is only
# divisible by itself and the number 1.
class NumberTestor
  def is_prime?(number)

  end

  # Second, implement the highest_prime_number_under method below. It should accept a number as
  # an argument and return the highest prime number under that number. For example, the 
  # highest prime number under 10 is 7.

  def highest_prime_number_under(number)

  end
end

RSpec.describe NumberTestor do

  describe '#calculate_change' do

    it 'should return true if given 2' do
      testor = NumberTestor.new
      expect(testor.is_prime?(2)).to eq(true)
    end

    # it 'should return 25 25 if given 50' do
    #   change = Change.new
    #   expect(change.calculate_change(50)).to eq([25,25])
    # end

  end
end