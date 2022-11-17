require_relative 'my_enumerable'

class MyList
  include MyEnumerable
  def initialize(*arr)
    @list = arr
  end

  def all?(&block)
    my_all?(@list, &block)
  end

  def any?(&block)
    my_any?(@list, &block)
  end

  def filter(&block)
    my_filter(@list, &block)
  end
end
