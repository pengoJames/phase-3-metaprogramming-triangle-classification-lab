class Triangle
  # write code here
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    check_triangle
  
    if @a == @b && @b ==@c
      :equilateral
    elsif @a == @b || @b == @c || @a == @c
      :isosceles  
    elsif @a != @b && @b != @c && @a != @c
      :scalene
    end
  end

  def all_positive_sides
    @a > 0 && @b > 0 && @c > 0
  end

  def triangle_inequality_checker
    @a + @b > @c && @a + @c > @b && @c + @b > @a

  end

  def check_triangle
    if !all_positive_sides  || !triangle_inequality_checker
      raise TriangleError
    end

  end

  class TriangleError < StandardError
    def message
      "Invalid Triangle!"
    end
  end
end
