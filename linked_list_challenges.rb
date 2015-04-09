require_relative 'linked_list.rb'

# helper method to determine if a list contains an item
def contains list, item
  cur = list.head

  while cur != nil
    return true if cur.node == item
    cur = cur.nxt
  end

  return false
end

# removes duplicate items from the list
# iterates through the list and removes one item at a time
# if the removed item is in the list, it stays removed, otherwise, it is added back
# time: O(n^2)?
# space: O(c)
def remove_dupes list
  cur = list.head
  i = 0
  while cur != nil
    list.remove i
    if !contains(list, cur.node)
      list.insert cur.node, i
      i += 1
    end
    cur = cur.nxt
  end

  return list
end

# find kth to last element of singly linked list
# iterates through the list twice - once to find the size of the list
# and again to navigate to the k to last element, or size - k
# time: O(n)
# space: O(c)
def find_klast list, k
  cur = list.head
  size = 0
  while cur != nil
    size += 1
    cur = cur.nxt
  end

  return nil if k < 1 || k > size

  cur = list.head
  (size - k).times do
    cur = cur.nxt
  end

  return cur != nil ? cur.node : nil
end

# removes the middle element of a singly linked list, given access only to that node
# iterates to the item before the middle one, in order to link it with mid.nxt
# time: O(n)
# space: O(c)
def remove_middle list, mid
  cur = list.head
  while cur.nxt != mid
    cur = cur.nxt
  end

  cur.nxt = mid.nxt
  return list
end

# partitions the list around x, so that nodes less than x come before nodes greater
# or equal to x
def partition list, x
  # TODO implement size property in list class
  cur = list.head
  size = 0
  while cur != nil
    size += 1
    cur = cur.nxt
  end

  cur = list.head
  i = 0
  while i < size
    mv = cur
    list.remove(i)
    if mv.node < x
      list.insert(mv.node, 0)
    else
      list.insert(mv.node, size - 1)
    end
    cur = cur.nxt
    i += 1
  end

  return list
end

