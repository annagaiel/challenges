# The Luhn algorithm is a method that credit cards and other identification numbers have a simple method of determining valid numbers from invalid ones. It is meant to prevent users from accidental errors.

# 4194560385008504 = pass
# 4194560385008505 = fail

# Step 1 - break the credit card into it's individual digits.
# Step 2 - Double every second digit, starting from the right-most.
# Step 3 - If the doubled value is greater than or equal to 10, take the value and subtract 9 from it.
# Step 4 - Sum the digits.
# Step 5 - If the sum is divisible by 10 it's a valid number. Otherwise it's invalid.

module Luhn
  def self.is_valid?(number)
    #IMPLEMENT ME
    arr = number.to_s.split('').reverse.map { |s| s.to_i }

    arr = arr.each_with_index.map do |digit, index|
      if index.odd?
        double = digit * 2
        double >= 10 ? double - 9 : double
      else
        digit
      end
    end

    arr.reduce(:+) % 10 == 0 ? true : false
  end
end
