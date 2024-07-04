class StringCalculator
  def self.add(input)
    if input.empty?
      0
    else
      delimiter = ","
      if input.start_with?("//")
        parts = input.split("\n", 2)
        delimiter = parts[0][2..-1]
        input = parts[1]
      end

      numbers = input.split(/#{Regexp.escape(delimiter)}|\n/).map(&:to_i)    
      numbers.inject(0) { |sum, number| sum + number }
    end
  end
end