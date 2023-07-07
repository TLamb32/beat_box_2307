class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
    else
      @head.new_node(Node.new(data))
    end
    # if @head = Node.new(data)
    # else
    #   next_node = Node.new(data)
      # require 'pry'; binding.pry
    # end
  end

  def count
    data_counter = 0
    current_node = @head
    
    if @head == nil
      data_counter = 0
    elsif current_node.next_node == nil
      data_counter = 1
      
    end
  end

  def to_string
    @head.data.to_s
  end
end