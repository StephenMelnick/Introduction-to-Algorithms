class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  def push(value)
    @data = LinkedListNode.new(value, @data)
  end

  def reverse_list(list)
    start_node = Stack.new
      while list
        start_node.push(list.value)
        list = list.next_node
      end
    return start_node.data
  end
end


  def print_values(list_node)
    if list_node
      print "#{list_node.value} --> "
      print_values(list_node.next_node)
    else
      puts "nil"
      return
    end
  end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

stack = Stack.new
stack.push(node3)
print_values(node3)
puts "-------"
revlist = stack.reverse_list(node3)
print_values(revlist)