# frozen_string_literal: true

class StringCalculator
  def add(string_numbers)
    return 0 if string_numbers.nil? || string_numbers == ""

    delimiter_regex = /,|\n/
    if string_numbers.start_with?("//")
      header, string_numbers = string_numbers.split("\n", 2)
      custom = header[2..] # everything after "//"
      delimiter_regex = Regexp.union(Regexp.new(Regexp.escape(custom)), /\n/)
    end

    parts = string_numbers.split(delimiter_regex)
    parts.map(&:to_i).sum
  end
end
