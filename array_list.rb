require_relative 'fixed_array'

class ArrayList

  attr_accessor :length, :contents

  def initialize(length)
    @length = length
    @contents = Hash.new
  end

  def add(element)
    self.length += 1
    contents[length] = element
  end

  def get(index)
    index < length ? contents[index] : (raise OutOfBoundsException, "Not a valid index")
  end

  def set(index, element)
    index < length ? contents[index] = element : (raise OutOfBoundsException, "Not a valid index")
  end

  def insert(index, element)
    if index < length
      i = length - 1
      while i > index
        contents[i] = contents[i-1]
        i -= 1
      end
      contents[i] = element
    else
      raise OutOfBoundsException, "Not a valid index"
    end
  end

end

class OutOfBoundsException < IndexError
end