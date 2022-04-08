require_relative 'enum'

class MyList
    include MyEnumerable

    def initialize(*list)
        @list = list
    end

    def each
        i = 0
        while @list[i]
          yield @list[i]
          i += 1
        end
    end
end

# make instance from MyList
list = MyList.new(1, 2, 3, 4)

list.all? { |e| e < 5 } # true


list.all? { |e| e > 5 } # false


list.any? { |e| e == 2 } # true


list.any? { |e| e == 5 } # false


list.filter(&:even?) # [2, 4]
