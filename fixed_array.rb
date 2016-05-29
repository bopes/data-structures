class FixedArray

  attr_reader :length
  attr_accessor :contents

  def initialize(length)
    @length = length
    @contents = Hash.new
  end

  def get(index)
    index < length ? contents[index] : (raise OutOfBoundsException, "Not a valid index")
  end

  def set(index, element)
    index < length ? contents[index] = element : (raise OutOfBoundsException, "Not a valid index")
  end

end

class OutOfBoundsException < IndexError
end