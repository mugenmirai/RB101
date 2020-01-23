# frozen_string_literal: true

def find_greatest(numbers)
  return if numbers.nil?

  saved_number = numbers.first
  numbers.each do |x|
    if saved_number >= x
      next
    else
      saved_number = x
    end
  end
  saved_number
end

apples = [1, 2, 3, 49, 2, 3, 4, 99, 1, 444, 12, 14]

p find_greatest(apples)
