# our enumberable

module MyEnumerable
  def any?
    each { |n| return true if yield n }
    false
  end

  def all?
    each { |n| return false unless yield n }
    true
  end

  def filter
    result = []
    each { |n| result.push(n) if yield n }
    result
  end
end
