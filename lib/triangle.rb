class Triangle

  attr_accessor :a, :b, :c

    def initialize(a, b, c)
      @a = a 
      @b = b
      @c = c
    end

    def kind()
      if (@a <= 0) || (@b <= 0) || (@c <= 0)
        raise TriangleError
      elsif (@a+@b <= @c) || (@a+@c <= @b) || (@b+@c <= @a)
        raise TriangleError
      else
        if a == b && b == c
          :equilateral
        elsif a == b || b == c || a == c
          :isosceles
        elsif a && b && c <= 0
          :illegal
        elsif a != b && b != c && a != c
          :scalene
        end
      end
    end

  class TriangleError < StandardError
    def message
    end
  end #end of TriangleError class

end #end of Triangle class
