class Triangle
  ALL = []
  attr_accessor :l_1, :l_2, :l_3

  def initialize(l_1, l_2, l_3)
    @l_1 = l_1
    @l_2 = l_2
    @l_3 = l_3

    ALL << self
  end

  def kind
    if @l_1 < 0 || @l_2 < 0 || @l_3 < 0 || (@l_1 >= (@l_2 + @l_3)) || (@l_2 >= (@l_1 + @l_3)) || (@l_3 >= (@l_1 + @l_2))
      begin
        raise TriangleError
          puts error.message
      end
    end
    if @l_1 == @l_2 && @l_2 == @l_3
      return :equilateral
    elsif @l_1 == @l_2 || @l_2 == @l_3 || @l_3 == @l_1
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Duuuude, I want a triangle!"
    end
  end

end
