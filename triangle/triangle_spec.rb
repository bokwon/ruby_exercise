# Triangle

# Write a program that can tell you if a triangle is equilateral, isosceles, or scalene.
# equilateral(정삼각형), isosceles(이등변 삼각형), scalene(부등변 삼각형) triangles.

require_relative 'triangle_refactor'

RSpec.configure do |config|
  config.color_enabled = true
end

describe 'Triangle' do
  # '.method_name': class method, '#method_name': instance method
  # describe '#kind' do 
    it 'knows that equilateral triangles have equal sides' do
      expect(Triangle.new(2, 2, 2).kind).to eq(:equilateral)
    end
  # end

  # temporarily pending by changing "it" to "xit"
    it 'knows that larger equilateral triangles also have equal sides' do
      expect(Triangle.new(10, 10, 10).kind).to eq(:equilateral)
    end

    it 'knows that isosceles triangles have last two sides equal' do
      expect(Triangle.new(3, 4, 4).kind).to eq(:isosceles)
    end

    it 'knows that isosceles triangles have first and last sides equal' do
      expect(Triangle.new(4, 3, 4).kind).to eql(:isosceles)
    end

    it 'knows that isosceles triangles have two first sides equal' do
      #Triangle.new(4, 4, 3).kind.should eq(:isosceles)
      expect(Triangle.new(4, 4, 3).kind).to eql(:isosceles)
    end

    it 'knows that isosceles triangles have in fact exactly two sides equal' do
      #Triangle.new(10, 10, 2).kind.should eq(:isosceles)
      expect(Triangle.new(10, 10, 2).kind).to eql(:isosceles)
    end

    it 'knows that scalene triangles have no equal sides' do
      #Triangle.new(3, 4, 5).kind.should eq(:scalene)
      expect(Triangle.new(3, 4, 5).kind).to eql(:scalene)
    end

    it 'knows that scalene triangles have no equal sides at a larger scale too' do
      #Triangle.new(10, 11, 12).kind.should eq(:scalene)
      expect(Triangle.new(10, 11, 12).kind).to eql(:scalene)
    end

    it 'knows that scalene triangles have no equal sides in descending order either' do
      #Triangle.new(5, 4, 2).kind.should eq(:scalene)
      expect(Triangle.new(5, 4, 2).kind).to eql(:scalene)
    end

    it 'knows that very small triangles are legal' do
      #Triangle.new(0.4, 0.6, 0.3).kind.should eq(:scalene)
      expect(Triangle.new(0.4, 0.6, 0.3).kind).to eql(:scalene)
    end

    it 'knows that triangles with no size are illegal' do
      expect{Triangle.new(0, 0, 0).kind}.to raise_error(TriangleError)
    end

    it 'knows that triangles with negative sides are illegal' do
      expect{Triangle.new(3, 4, -5).kind}.to raise_error(TriangleError)
    end

    it 'knows that triangles violating triangle inequality are illegal' do
      expect{Triangle.new(1, 1, 3).kind}.to raise_error(TriangleError)
    end

    it 'knows that triangles violating triangle inequality are illegal 2' do
      expect{Triangle.new(2, 4, 2).kind}.to raise_error(TriangleError)
    end

    it 'knows that triangles violating triangle inequality are illegal 3' do
      expect{Triangle.new(7, 3, 2).kind}.to raise_error(TriangleError)
    end

end 