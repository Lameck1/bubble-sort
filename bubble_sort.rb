def bubble_sort(arr)
  loop do
    swap_took_place = false
    (arr.length - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swap_took_place = true
      end
    end
    break unless swap_took_place
  end
  arr
end

def bubble_sort_by(arr)
  loop do
    swap_took_place = false
    (arr.length - 1).times do |i|
      value = yield arr[i], arr[i + 1]
      if value.positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swap_took_place = true
      end
    end
    break unless swap_took_place
  end
  arr
end
