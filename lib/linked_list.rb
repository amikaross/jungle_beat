require "./lib/node"

class LinkedList 
  attr_accessor :head 

  def initialize
    @head = nil
  end

  def append(data)
    if @head == nil 
      @head = Node.new(data)
    else 
      current_node = @head
      until current_node.next_node == nil 
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
    end
    data
  end

  def prepend(data)
    if @head == nil 
      @head = Node.new(data)
    else 
      temp = @head 
      @head = Node.new(data)
      @head.next_node = temp
    end
    data
  end

  def insert(position, data)
    counter = 0 
    current_node = @head
    until counter == position - 1
      current_node = current_node.next_node
      counter += 1
    end
    temp = current_node.next_node
    current_node.next_node = Node.new(data)
    current_node.next_node.next_node = temp
    data
  end

  def count 
    counter = 0
    current_node = @head
    until current_node == nil 
      counter += 1
      current_node = current_node.next_node
    end
    counter
  end

  def to_string
    current_node = @head
    string = []
    until current_node == nil 
      string << current_node.data.to_s
      current_node = current_node.next_node
    end
    string.join(", ")
  end

  def find(position, num_elements)
    counter = 0
    elements = 0
    current_node = @head 
    string = []
    until counter == position 
      # require 'pry'; binding.pry
      current_node = current_node.next_node 
      counter += 1 
    end
    until elements == num_elements
      # require 'pry'; binding.pry
      string << current_node.data.to_s 
      current_node = current_node.next_node
      elements += 1
    end 
    string.join(" ")
  end

  def includes?(data)
    current_node = @head 
    until current_node.next_node == nil 
      if current_node.data == data 
        return true 
      else
        current_node = current_node.next_node
      end
    end 
    false 
  end

  def pop 
    previous_node = nil 
    current_node = @head 
    until current_node.next_node == nil 
      temp = current_node 
      current_node = current_node.next_node
      previous_node = temp
    end
    previous_node.next_node = nil 
    current_node.data
  end
end