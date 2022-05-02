require 'pry'

class Triangle
  # write code here
  attr_reader :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    kind
      @side_a = side_a
      @side_b = side_b
      @side_c = side_c
  end

  def kind
    begin
      raise TriangleError
      if
        side_a + side_b > side_c && side_b + side_c > side_a && side_a + side_c > side_b
      end  
    end
  end

  class TriangleError < StandardError
    def message
      "message invoked"
    end
  end

end

binding.pry