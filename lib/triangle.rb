require 'pry'
class Triangle
  # write code here
  attr_accessor :num1, :num2, :num3, :kind

  def initialize(num1, num2, num3)
    @num1 = num1
    @num2 = num2
    @num3 = num3
  end

  def kind
    binding.pry
    if self.num1 > 0 && self.num2 > 0 && self.num3
      if self.num1 == self.num2 && self.num1 == self.num3
        @kind = :equilateral
      elsif self.num1 == self.num2 || self.num1 == self.num3 || self.num2 == self.num3
        @kind = :isosceles
      elsif self.num1 != self.num2 && self.num1 != self.num3 && self.num2 != self.num3
        @kind = :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end
end
