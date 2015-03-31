require_relative 'll_node.rb'

# An implementation of a singly-linked list
class LinkedList
  attr_accessor :head

  def insert item, index
    new_i = Node.new item
    if @head == nil || index == 0
      new_i.nxt = @head
      @head = new_i
    else
      cur = @head
      i = 0
      while (i < index - 1) && cur.nxt != nil
        cur = cur.nxt
        i += 1
      end

      tmp = cur.nxt
      new_i.nxt = tmp
      cur.nxt = new_i      
    end
  end

  def remove index
    if @head.nxt == nil || index == 0
      @head = @head.nxt
    else
      cur = @head
      i = 0
      while (i < index - 1) && cur.nxt.nxt != nil
        cur = cur.nxt
        i += 1
      end
      cur.nxt = cur.nxt.nxt
    end
  end

  def to_s
    ans = ""
    cur = head
    while cur != nil
      ans << "#{cur.node.to_s} -> "
      cur = cur.nxt
    end

    return ans
  end
end

