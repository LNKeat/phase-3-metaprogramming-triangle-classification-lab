require 'pry'

class Triangle
  attr_accessor :side1, :side2, :side3, :type

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @type = :symbol
    validTri
  end

  def validTri
    p = {:isPos=>0}
    [side1, side2, side3].each {|n| n > 0 && p[:isPos]+= 1 }
    ineq = side1 + side2 > side3 && side1 + side3 > side2 && side3 + side2 > side1
    begin
      raise TriangleError unless p[:isPos] == 3 && ineq
    end
    kind
  end


  def kind
    if side1 == side2 && side1 == side3
      @type = :equilateral
    elsif side1 == side2 || side1 == side3 || side2 == side3
      @type = :isosceles
    elsif (side1 + side2) > side3 && (side2 + side3) > side1 && (side1 + side3) > side2
      @type = :scalene
    end
      puts self.type
      self.type
  end


  class TriangleError < StandardError
  end
end

