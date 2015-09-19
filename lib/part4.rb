class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s   # make sure it's a string
    attr_reader attr_name        # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    self.class_eval %Q[
      def initialize
        @#{attr_name}_history = [nil]
      end
      def #{attr_name}=(value)
        @#{attr_name} = value
        @#{attr_name}_history << value
      end
    ]
  end
end

=begin
class Foo
  attr_accessor_with_history :bar
end

f = Foo.new
puts f.bar_history.inspect
f.bar = 3
f.bar = :wowzo
f.bar = 'boo!'
puts f.bar_history.inspect

f = Foo.new
f.bar = 1
f.bar = 2
puts f.bar_history.inspect
f = Foo.new
f. bar = 4
puts f.bar_history.inspect
=end