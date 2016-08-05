class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  print "#{list_node.value} --> "
  if list_node.next_node.nil?
    print "nil\n"
    return
  else
    print_values(list_node.next_node)
  end
end

def simple_floyd(list_node)
  
  tortoise = list_node
  hare = list_node.next_node

  while tortoise != hare && tortoise && hare
    tortoise = tortoise.next_node
    hare = hare.next_node.next_node
  end

  return tortoise == hare
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node1.next_node = node3

puts simple_floyd(node3)
