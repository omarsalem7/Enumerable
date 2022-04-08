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
end
