# def bubble_sort(array)
#   (array.length - 1).times do |i|
#     (array.length - 1 - i).times do |j|
#       result = yield array[j], array[j + 1]
#       array[j], array[j + 1] = array[j + 1], array[j] if result.positive?
#     end
#   end
#   puts array
# end

x = [5, 7, 8, 9, 2, 4, 3, 1]

# bubble_sort(x)
def bubble_sort(arr)
  swap_took_place = false

  (arr.length - 1).times do |i|
    if arr[i] > arr[i + 1]
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      swap_took_place = true
    end
  end
  if !swap_took_place
    break
  end
end

bubble_sort(x)
