class Triangle

  attr_accessor :length_a, :length_b, :length_c

  def initialize(length_a, length_b, length_c)
    @length_a = length_a
    @length_b = length_b
    @length_c = length_c
  end

  def kind
    if @length_a == 0 || @length_b == 0 || @length_c == 0
      raise TriangleError
    elsif ((@length_a + @length_b) <= @length_c) || ((@length_a + @length_c) <= @length_b) || ((@length_c + @length_b) <= @length_a)
      raise TriangleError
    elsif @length_a == @length_b && @length_b == @length_c && @length_a == @length_c
      :equilateral
    elsif (@length_a == @length_c && @length_c != @length_b && @length_a != @length_b) || (@length_a == @length_b && @length_a != @length_c && @length_b != @length_c) || (@length_b == @length_c && @length_b != @length_a && @length_c != @length_a) || (@length_b == @length_c && @length_b != @length_a && @length_c != @length_a)
      :isosceles
    elsif (@length_a != @length_b && @length_a != @length_c)
      :scalene
    # elsif @length_a == 0 || @length_b == 0 || @length_c == 0
    #   raise TriangleError
    #   # begin
    #   #   raise TriangleError
    #   # rescue PartnerError => error
    #   #   puts error.message
    #   # end
    # elsif ((@length_a + @length_b) <= @length_c) || ((@length_a + @length_c) <= @length_b) || ((@length_c + @length_b) <= @length_a)
    #   raise TriangleError
    #   # begin
    #   #   raise TriangleError
    #   # rescue PartnerError => error
    #   #   puts error.message
    #   # end
    end
  end

  class TriangleError < StandardError
    def message
      "This triangle is illegal"
    end
  end
end
