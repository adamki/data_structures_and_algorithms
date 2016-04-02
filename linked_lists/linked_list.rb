require './node'

class LinkedList
  attr_accessor :head, :nodes

  def initialize(data = nil,  next_node = nil)
    @head = Node.new(data)
    @nodes = 0
  end

  def count
    nodes
  end

  def last_node
    node = @head
    until node.next_node == nil
      node = node.next_node
    end
    node
  end

  def push(data)
    tail = last_node
    if head.data == nil
      @nodes += 1
      head.data = data
    else
      @nodes += 1
      tail.next_node = Node.new(data)
    end
  end

  def pop
    @nodes -= 1
    removed_node = last_node.data
    last_node = nil
    removed_node
  end

  def find(data)
    node = @head
    until node.next_node.data == data || node.next_node == nil
      node = node.next_node
    end
    node
  end

  def delete(data)
    if @nodes == 1
      @head = nil
      @nodes -=1
    else
      prev_node = find(data)
      prev_node.next_node = prev_node.next_node.next_node
      @nodes -=1
    end
  end

end
