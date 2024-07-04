class StringCalculator
  def add(input)
    if input.empty?
      0
    else
      delimiter = ","
      if input.start_with?("//")
        parts = input.split("\n", 2)
        delimiter = parts[0][2..-1]
        input = parts[1]
      end
      
      # split based on delimiter
      numbers = input.split(/#{Regexp.escape(delimiter)}|\n/).map(&:to_i)

      # raise if numbers content negative number
      negatives = numbers.select { |num| num < 0 }
      raise "Negatives not allowed: #{negatives.join(', ')}" unless negatives.empty?

      numbers.inject(0) { |sum, number| sum + number }
    end
  end
end