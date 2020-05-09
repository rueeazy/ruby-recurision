#Merge Sort Solution

a = [4, 8, 6, 2, 1, 7, 5, 3]

def merge_sort(arr)
    return arr if arr.length < 2
    mid = (arr.length / 2).floor
    left = merge_sort(arr[0..mid-1])
    right = merge_sort(arr[mid..arr.length])
    merge(left, right)
end

def merge(left, right)
    if left.empty?
        right
    elsif right.empty? 
        left
    elsif left.first < right.first
        [left.first] + merge(left[1..left.length], right)
    else
        [right.first] + merge(left, right[1..right.length])
    end
end

#p merge_sort(a)