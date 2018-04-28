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
    if @num1 + @num2 <= @num3 || @num1 + @num3 <= @num2 || @num2 + @num3 <= @num1
      raise TriangleError
    elsif @num1 <= 0 || @num2 <= 0 || @num3 <= 0
    elsif (@num1 == @num2) && (@num2 == @num3)
      @kind = :equilateral
    elsif (@num1 == @num2) || (@num2 == @num3) || (@num1 == @num3)
      @kind = :isosceles
    elsif (@num1 !=  @num2) && (@num2 != @num3) && (@num1 != @num3)
      @kind = :scalene
    end
  end

  class TriangleError < StandardError
  end
end
