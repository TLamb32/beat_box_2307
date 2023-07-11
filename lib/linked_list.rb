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
    if @head != nil && @head.next_node == nil
      data_counter += 1
    elsif @head != nil && @head.next_node != nil
      data_counter += 2
    end
    data_counter
  end

  def to_string
    if @head.next_node == nil
      head_data
    elsif @head.next_node != nil
      head_data + " " + next_node_data
    end
    # require 'pry'; binding.pry
  end

  def head_data
    @head.data.to_s
  end

  def next_node_data
    @head.next_node.data
  end
end