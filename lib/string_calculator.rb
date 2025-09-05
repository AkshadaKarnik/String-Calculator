# frozen_string_literal: true

class StringCalculator
  def add(string_numbers)
    return 0 if string_numbers.nil? || string_numbers == ""
    # return string_numbers.to_i if string_numbers !~ /,|\n/
    # 0
    parts = string_numbers.split(",")
    return parts.first.to_i if parts.size == 1
    parts.map!(&:to_i).sum
  end
end
