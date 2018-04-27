class Triangle
  # write code here

  attr_accessor :side1, :side2, :side3

  def initialize(s1,s2,s3)
    @side1 = s1
    @side2 = s2
    @side3 = s3
  end

  class TriangleError < StandardError
    # triangle error code
    def message
      puts "It's not a triangle."
    end
  end

  def kind
    if @side1<=0||@side2<=0||@side3 <=0
      raise TriangleError
    elsif @side1+@side2<=@side3|| @side3+@side2<=@side1 ||@side1+@side3<=@side2
      raise TriangleError
    elsif @side1<=0||@side2<=0||@side3 <=0
      raise TriangleError
    elsif @side1 == @side2 && @side2==@side3
      return :equilateral
    elsif @side1 == @side2 || @side2==@side3 ||@side1==@side3
      return :isosceles
    else
      return :scalene
    end
  end




end
