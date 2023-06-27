require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*args)
    @list = args
  end

  # here i execute block which i passed when i call method name 'every' from my_enuerable
  def every
    @list.each do |element|
      yield element
  end
end
end

list = MyList.new(1, 2, 3, 4)
puts(list.all? { |e| e < 5 }) # true
puts(list.all? { |e| e > 5 }) # false
puts(list.any? { |e| e == 2 }) # true
puts(list.any? { |e| e == 5 }) # false
p(list.filter(&:even?)) # [2, 4]
