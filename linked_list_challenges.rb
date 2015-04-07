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

