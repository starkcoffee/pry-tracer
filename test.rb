class Foo
  def self.foo(x,y)
    Bar.bar(x)
  end
end

class Bar
  def self.bar(y)
    Baz.baz(y)
  end
end

class Baz
  def self.baz(z)
    z + 1
  end
end

require 'pry'
binding.pry
puts Foo.foo(5,7)
