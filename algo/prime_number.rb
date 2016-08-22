# Use RSpec to test the following exercise! You may wish to wrap the methods below in a class to help facilitate this.
require 'rspec'
# First, implement the is_prime? method below. It should accept a number as an argument and return
# true if the number is prime and false if it is not. A prime number is a number that is only
# divisible by itself and the number 1.
class NumberTestor
  def is_prime?(number)
    unless number == 1
      if number <= 3
        return true
      elsif number%2 == 0
        return false
      elsif number%3 == 0
        return false
      end

      test_divisor = 5
      test_iterator = 2

      while test_divisor*test_divisor <= number
        if number%test_divisor == 0
          return false
        end
        test_divisor += test_iterator
        test_iterator = 6-test_iterator
      end
      return true
    end
    return false
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

    it 'should return true if given 3' do
      testor = NumberTestor.new
      expect(testor.is_prime?(3)).to eq(true)
    end

    it 'should return false if given 4' do
      testor = NumberTestor.new
      expect(testor.is_prime?(4)).to eq(false)
    end

    it 'should return false if given 4' do
      testor = NumberTestor.new
      expect(testor.is_prime?(4)).to eq(false)
    end

    it 'should return true if given 191' do
      testor = NumberTestor.new
      expect(testor.is_prime?(191)).to eq(true)
    end

    it 'should return true if given 499' do
      testor = NumberTestor.new
      expect(testor.is_prime?(499)).to eq(true)
    end

    it 'should return false if given 973' do
      testor = NumberTestor.new
      expect(testor.is_prime?(973)).to eq(false)
    end

    it 'should return false if given 1' do
      testor = NumberTestor.new
      expect(testor.is_prime?(1)).to eq(false)
    end

  end
end