def bubble_sort(arr)
  loop do
    swap_took_place = false
    (arr.length - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swap_took_place = true
      end
    end
    break if !swap_took_place
  end
  p arr
end

def bubble_sort_by(arr)
  loop do
    swap_took_place = false
    (arr.length - 1).times do |i|
      if yield (arr[i], arr[i + 1]).positive? arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swap_took_place = true
      end
    end
    break if !swap_took_place
  end
  p arr
end

x = [5, 7, 8, 9, 2, 4, 3, 1]

bubble_sort_by do |a, b|
  a - b
end

bubble_sort(x)
