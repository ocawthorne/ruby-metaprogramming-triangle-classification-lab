class Triangle
  @@types = [:equilateral, :isosceles, :scalene]

  def initialize(s1, s2, s3)
    @triangle = [s1, s2, s3]
  end

  def kind
    t = @triangle
    raise TriangleError if t.any?{|s| s >= t.sum - s}
    @@types[t.uniq.count-1]
  end

  class TriangleError < StandardError
    def message
      puts "Not a triangle."
    end
  end

end