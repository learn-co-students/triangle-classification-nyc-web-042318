require 'pry'

class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if side1 > 0 && side2 > 0 && side3 > 0

      if side1 == side2 && side1 == side3 && side2 == side3
        return :equilateral

      elsif ( (side1 < (side2+side3)) == true && (side2 < (side1+side3)) == true && (side3 < (side1+side2)) == true )

        if side1 == side3 || side1 == side2 || side2 == side3
          return :isosceles
        else
          return :scalene
        end

      else
        begin
          raise TriangleError
        end
      end

    else
      begin
        raise TriangleError
      end
    end

  end

  class TriangleError < StandardError

    def message
      puts "Hey this isn't a valid type!"
    end
  end
end
