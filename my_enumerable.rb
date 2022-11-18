module MyEnumerable
  def my_all?(arr, &block)
    res = true
    arr.each do |e|
      res &&= block.call(e)
    end
    res
  end

  def my_any?(arr, &block)
    res = false
    arr.each do |e|
      res ||= block.call(e)
      return res if res
    end
    res
  end

  def my_filter(arr, &block)
    res = []
    arr.each do |e|
      res.push(e) if block.call(e)
    end
    res
  end
end
