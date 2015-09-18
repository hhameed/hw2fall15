class CartesianProduct
  include Enumerable

  def initialize arr1, arr2
    @arr1 = arr1
    @arr2 = arr2
  end
  
  def each
    @arr1.each do |i|
      @arr2.each do |j|
        puts "I am called...\n"
        yield([i, j])
      end
    end
  end

end

c = CartesianProduct.new([:a,:b], [4,5])
c.each { |elt| puts elt.inspect }

c = CartesianProduct.new([:a,:b], [])
c.each { |elt| puts elt.inspect }