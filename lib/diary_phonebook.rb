class PhoneBook

  def initialize
    @numbers = []
  end

  def extract_numbers(entry)
    entry.scan(/[0-9]{11}/).each do |number|
      @numbers << number
    end
    @numbers.uniq!
  end

  def list_numbers
    return @numbers
  end
end
