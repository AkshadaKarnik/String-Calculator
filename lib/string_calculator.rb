# frozen_string_literal: true

class StringCalculator
  def add(string_numbers)
    return 0 if string_numbers.nil? || string_numbers == ""
    # handles new lines between numbers (alongside commas)
    parts = string_numbers.split(/,|\n/)
    parts.map(&:to_i).sum
  end
end
