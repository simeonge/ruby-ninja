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
# time: O(n^2)
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

# find kth to last element of list
# iterates through the list twice - once to find the size of the list
# and again to navigate to the k to last element, or size - k
# time: O(n)
# space: O(c)
def find_klast list, k
  cur = list.head
  size = 0
  item = nil
  while cur != nil
    size += 1
    cur = cur.nxt
  end

  cur = list.head
  (size - k).times do
    cur = cur.nxt
  end

  return cur != nil ? cur.node : nil
end

