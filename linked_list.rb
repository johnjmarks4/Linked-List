class LinkedList
  
  def initialize(value)
    @head = Node.new(value, next_node=nil)
  end
  
  def move_next #head.next_node.next_node
    current = @head
    while current.next_node? != nil
      current = @current.next_node?
    end
    puts current.inspect
  end
  
  def append(value)
    current = @head
    while current.next_node? != nil
      current = current.next_node?
    end
    current.append(Node.new(value, next_node=nil))
  end
  
  def prepend(value)
    first = @head
    @head = Node.new(value, first)
  end
  
  def size
    i = 0
    current = @head
    while current.next_node? != nil
      current = current.next_node?
      i += 1
    end
    i + 1
  end
  
  def head
    @head
  end
  
  def tail
    current = @head
    while current.next_node? != nil
      current = current.next_node?
    end
    current
  end
  
  def at(index)
    current = @head
    index.times do
      current = current.next_node?
    end
    current
  end
  
  def pop
    current = @head
    if self.size > 2
      (self.size - 2).times do
        current = current.next_node?
      end
    end
    current.append(nil)
  end
  
  def contains?(value)
    i = 0
    current = @head
    current_value = ''
    while current_value != value && i < (self.size)
      current_value = current.value?
      if current_value == value
        return true
      else
        current = current.next_node?
        i += 1
      end
    end
    if i >= self.size
      return false
    end
  end
  
  def find(data)
    i = 0
    current = @head
    current_value = ''
    while current_value != data && i < (self.size)
      current_value = current.value?
      if current_value == data
        return i
      else
        current = current.next_node?
        i += 1
      end
    end
    if i >= self.size
      return nil
    end
  end
  
  def to_s
    current = @head
    i = 0
    while i < self.size
      if current.next_node? == nil
        print "(#{current.value?}) -> nil"
      else
        print "(#{current.value?}) -> "
      end
      current = current.next_node?
      i += 1
    end
  end
  
  class Node
    
    def initialize(value, next_node)
      @value = value
      @next_node = next_node
    end
    
    def append(next_node)
      @next_node = next_node
    end
    
    def next_node?
      @next_node
    end
    
    def value?
      @value
    end

  end

end

linked_list = LinkedList.new(10)

linked_list.prepend(9)

#linked_list.move_next

linked_list.size

linked_list.head

linked_list.tail

linked_list.append(11)

linked_list.at(1)

linked_list.pop

linked_list.size

linked_list.contains?(9)

linked_list.contains?(50)

linked_list.find(10)

linked_list.to_s