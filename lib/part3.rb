class Dessert
  
  attr_accessor :name
  attr_accessor :calories

  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
  def healthy?
    @calories < 200
  end
  
  def delicious?
    true
  end
end

class JellyBean < Dessert
  
  attr_accessor :flavor
  
  def initialize(name, calories, flavor)
    super name, calories
    @flavor = flavor
  end
  
  def delicious?
    if @flavor == 'black licorice'
      return false
    else
      return super
    end
  end
end

=begin
bc = Dessert.new("Black Choco", 300)
puts bc.name.inspect
puts bc.calories.inspect
puts bc.healthy?.inspect
puts bc.delicious?.inspect
bc.calories = 100
puts bc.healthy?.inspect

jb = JellyBean.new("My JellyBean", 300, "Vanilla")
puts jb.name.inspect
puts jb.calories.inspect
puts jb.flavor.inspect
puts jb.healthy?.inspect
puts jb.delicious?.inspect
puts jb.flavor = 'black licorice'
puts jb.delicious?.inspect
jb.calories = 50
puts jb.healthy?.inspect
=end