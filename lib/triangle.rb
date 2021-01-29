class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    self.a = a
    self.b = b
    self.c = c
  end

  def triangle?
    if a > 0 && b > 0 && c > 0 && a + b > c && b + c > a && c + a > b
      true
    else
      false
    end
  end

  def kind
    if triangle?
      if a == b && b == c
        :equilateral
      elsif a == b || b == c || c == a
        :isosceles
      elsif a != b && c != b && c != a
        :scalene
      end
    else
      begin
        raise TriangleError
      end
    end
  end

  class TriangleError < StandardError
  end
end
