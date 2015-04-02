require_relative 'll_node.rb'

# An implementation of a singly-linked list
class LinkedList
  # first node of the list
  attr_reader :head

  # inserts item at the specified index
  def insert item, index
    # create item
    new_i = Node.new item

    # inserting in the beginning
    if @head == nil || index == 0
      new_i.nxt = @head # ok if head is nil
      @head = new_i
    else
      cur = @head
      i = 0
      # navigate to index
      while (i < index - 1) && cur.nxt != nil
        cur = cur.nxt
        i += 1
      end

      # move references to insert item
      tmp = cur.nxt # ok if nil
      new_i.nxt = tmp # ok if nil
      cur.nxt = new_i      
    end
  end

  # removes the item at the specified index
  def remove index
    return if @head == nil # if list is empty
    # remove from the beginning
    if @head.nxt == nil || index == 0
      @head = @head.nxt # ok if head.nxt is nil
    else
      cur = @head
      i = 0
      # navigate to index
      while (i < index - 1) && cur.nxt.nxt != nil
        cur = cur.nxt
        i += 1
      end
      cur.nxt = cur.nxt.nxt # can be nil
    end
  end

  # returns a string representing the contents of the list
  def to_s
    ans = ""
    cur = head
    # iterate through whole list
    while cur != nil
      ans << "#{cur.node.to_s} -> "
      cur = cur.nxt
    end

    return ans
  end
end

