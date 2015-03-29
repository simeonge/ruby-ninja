# returns true of str has all unique characters, false otherwise
# iterates over the string and checks if the char at the current index can be
# found in the [0, current) substring
# time: O(n^2)
# space: O(n)
def string_uniq str
  ans = true
  i = 1
  while i < str.size
    ans = false if str[0, i].include? str[i]
    i += 1
  end
  return ans
end

# reverses a string in place
# iterates over half of the string and swaps the current char with the char at
# size - current - 1
# time: O(n)
# space: O(n)
def reverse str
  # str.reverse
  i, s = 0, str.size
  while i < s / 2
    tmp = str[i]
    str[i] = str[s-i-1]
    str[s-i-1] = tmp
    i += 1
  end
  return str
end

# returns true if the strings are permutations of each other
# for str1 and str2 to be permutations of each other, it means str1 has the same
# characters as str2 and each character appears the same number of teams in str1 and str2
# therefore, use a map to determine the frequences of each char in each string,
# then just determine if the maps are the same
# time: O(n^2)
# space: O(n)
def is_permutation str1, str2
  mp1, mp2 = {}, {}
  str1.each_char do |c|
    if mp1.has_key? c
      mp1[c] += 1
    else
      mp1[c] = 0
    end
  end
  str2.each_char do |c|
    if mp2.has_key? c
      mp2[c] += 1
    else
      mp2[c] = 0
    end
  end

  return mp1 == mp2
end

# replace whitespace characters with '%20' in place
# iterates over the string when when the current char is a single whitespace,
# replaces is with %20, then skips past the %20 which it just inserted
# time: O(n)
# space: O(n)
def replace_space str
  i = 0
  while i < str.size
    if str[i] == " "
      str.slice! i
      str.insert i, "%20"
      i += 3
    else
      i += 1
    end
  end

  return str
end

# compresses consecutive repeated characters and replaces them by their count
# iterates over the string and counts the number of consecutive occurences of
# each letter, then appends the number to the string and resets the count when it
# reaches a different letter
# if the original is a shorter string, outputs the original, otherwise outputs
# the compressed string
# time: O(n)
# space: O(n)
def compress str
  cmp  = ""
  i, cur, cnt = 1, str[0], 1
  cmpd << cur
  while i < str.size
    if str[i] == cur
      cnt += 1
    else
      cmpd << cnt.to_s
      cnt = 1
      cur = str[i]
      cmpd << cur
    end
    i += 1
  end
  cmpd << cnt.to_s

  return cmpd.size < str.size ? cmpd : str
end

# rotates a NxN matrix by 90 degrees
# assuming it is a matrix of ints, creates a new empty matrix and inserts each
# number at (i, j) in it's new position - (j, matrix size - i - 1)
def rotate_matrix mtr
  # mtr is an array or arrays
  n = mtr.size
  ans = []
  n.times { ans << [] }

  mtr.each_with_index do |row, i|
    row.each_with_index do |num, j|
      ans[j][n-i-1] = num
    end
  end

  return ans
end

# rotates a NxN matrix by 90 degrees recursively in place
# TODO implement
def rotate_matrix_r_p mtr
  # mtr is an array of arrays
  n = mtr.size - 1
end

# in a MxN matrix, if an element is 0, its entire row and column become 0
# creates a copy of the matrix, because if new zeros are inserted prematurely,
# incorrect rows and column will become zero
# iterates over the rows and for every 0, the row and column in the copy is made 0.
def zerofy_matrix mtr
  # mtr is an array of arrays
  ans = []
  # cloning mtr does not work since it's a shallow copy and its rows are not copied
  mtr.each {|row| ans << row.clone }

  mtr.each_with_index do |row, i|
    row.each_with_index do |num, j|
      if mtr[i][j] == 0
        # make row zero
        ans[i].map! {|n| 0}
        # make column zero
        k = 0
        while k < mtr.size
          ans[k][j] = 0
          k += 1
        end
      end
    end
  end

  return ans
end

# determines if str1 is a rotation of str2
# iterates over one of the string, rotating it by one letter each time
# if the strings become equal at one point, return true. if the iteration is
# complete, return false
# time: O(n)
# space: O(n)
def is_rotation str1, str2
  i = 0
  while i < str1.size
    if str1 == str2
      return true
    else
      str1 << str1.slice!(0)
    end
    i += 1
  end

  return false
end

