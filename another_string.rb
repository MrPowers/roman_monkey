class String

  def another_to_arabic_number
    validate_roman
    convert_to_integer
  end

  private

  def convert_to_integer
    result = []
    roman_to_numbers.each_with_index do |num, index|
      if result.last && num > result.last
        result << num - result.pop
      else
        result.push(num)
      end
    end
    result.inject(&:+)
  end

  def roman_to_numbers
    split_roman.map { |letter| another_roman_mapping[letter] }
  end

  def split_roman
    self.split("")
  end

  def validate_roman
    valid_letters = another_roman_mapping.keys
    raise "invalid Roman numeral" unless split_roman.all? { |letter| valid_letters.include?(letter) }
  end

  def another_roman_mapping
    {
      "M" => 1000,
      "D" => 500,
      "C" => 100,
      "L" => 50,
      "X" => 10,
      "V" => 5,
      "I" => 1
    }
  end

end
