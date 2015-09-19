class CartesianProduct
  include Enumerable

  def initialize arr1, arr2
    @arr1 = arr1
    @arr2 = arr2
  end
  
  def each
    @arr1.each do |i|
      @arr2.each do |j|
        yield([i, j])
      end
    end
  end

end

