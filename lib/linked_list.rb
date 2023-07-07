class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    @head = Node.new(data)
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