# frozen_string_literal: true

class StringCalculator
  def add(string_numbers)
    return 0 if string_numbers.nil? || string_numbers == ""
    return string_numbers.to_i if string_numbers !~ /,|\n/
    0
  end
end
