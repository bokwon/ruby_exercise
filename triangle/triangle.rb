class Triangle

  def initialize(sidea, sideb, sidec)
    @sidea = sidea
    @sideb = sideb
    @sidec = sidec
  end

  def kind
    if @sidea <= 0 || @sideb <= 0 || @sidec <= 0
      raise TriangleError
    elsif (@sidea + @sideb <= @sidec) || (@sidea + @sidec <= @sideb) || (@sideb + @sidec <= @sidea)
      raise TriangleError
    end

    if @sidea == @sideb && @sidea == @sidec && @sideb == @sidec
      :equilateral
    elsif @sideb == @sidec || @sidea == @sidec || @sidea == @sideb
      :isosceles
    elsif @sidea != @sideb && @sideb != @sidec && @sidea != @sidec
      :scalene
    end     
  end

end

class TriangleError < StandardError
end