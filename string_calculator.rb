class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = /,|\n/
    if numbers.start_with?("//")
      first_line, numbers = numbers.split("\n", 2)
      custom_delimiter = first_line[2..]
      delimiter = Regexp.escape(custom_delimiter)
    end

    nums = numbers.split(/#{delimiter}/).map(&:to_i)
    nums.sum
  end
end