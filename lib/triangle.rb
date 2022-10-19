require "pry"

class Triangle
  # write code here

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def validTriangle 
    if @side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side1 + @side3 <= @side2 || @side1 <= 0 || @side2 <=0 || @side3 <=0 
      return false
    else 
      return true
    end
  end

  def kind
    if !validTriangle
      begin 
        raise TriangleError
      end
    else
      if @side1 == @side2 && @side1 == @side3
        :equilateral
      elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
        :isosceles
      else
        :scalene
      end
    end
  end

  class TriangleError < StandardError
    def message 
      "This is not a valid triangle!"
    end
  end

end
