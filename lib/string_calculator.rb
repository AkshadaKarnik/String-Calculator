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

    ints = string_numbers.split(delimiter_regex).reject(&:empty?).map(&:to_i)

    # Validate
    negatives = ints.select { |n| n.negative? }
    unless negatives.empty?
      raise ArgumentError, "negative numbers not allowed: #{negatives.join(',')}"
    end

    ints.sum
  end
end
