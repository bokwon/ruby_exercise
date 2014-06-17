class Triangle

  attr_accessor :sides

  def initialize(side1, side2, side3)
    self.sides = [side1, side2, side3].sort

    raise TriangleError if any_side_zero? || violates_triangle_equality?
  end

  def kind
    if sides.max == sides.min
      :equilateral
    elsif sides.uniq.size == 2
      :isosceles
    else
      :scalene
    end
  end

  private

    def any_side_zero?
      sides.any? {|side| side <= 0}
    end

    def violates_triangle_equality?
      sides.max >= sides[0] + sides[1]
    end

end

class TriangleError < StandardError; end
