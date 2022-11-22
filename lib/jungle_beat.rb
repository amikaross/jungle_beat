require "./lib/linked_list"

class JungleBeat
  attr_reader :list, :head

  def initialize
    @list = LinkedList.new
  end

  def append(data)
    data_array = data.split(" ")
    (0..data_array.length - 1).each do |i|
      @list.append(data_array[i])
    end
    data
  end

  def count 
    @list.count
  end

  def play 
    beats = @list.to_string 
    `say -r 500 -v Boing #{beats}`
    "dank beats"
  end
end