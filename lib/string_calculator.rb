# frozen_string_literal: true

class StringCalculator
  def add(string_numbers)
    return 0 if string_numbers.nil? || string_numbers == ""

    delim_regex, body = parse_delimiters(string_numbers)

    # Split and convert
    ints = body.split(delim_regex).reject(&:empty?).map(&:to_i)

    # Validate
    negatives = ints.select { |n| n.negative? }
    unless negatives.empty?
      raise ArgumentError, "negative numbers not allowed: #{negatives.join(',')}"
    end

    ints.sum
  end

  private

  # If the string starts with custom delimiter header ("//;\n1;2")
  # using that delimiter; otherwise using default comma/newline.
  def parse_delimiters(input)
    if input.start_with?("//")
      header, body = input.split("\n", 2)
      custom = header[2..] # after //
      [Regexp.new(Regexp.escape(custom)), body || ""]
    else
      [/[,\n]/, input]
    end
  end
end
