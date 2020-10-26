def bubble_sort(array)
  (array.length - 1).times do |i|
    (array.length - 1 - i).times do |j|
      result = yield array[j], array[j + 1]
      array[j], array[j + 1] = array[j + 1], array[j] if result.positive?
    end
  end
  puts array
end

x = [5, 7, 8, 9, 2, 4, 3, 1]

bubble_sort(x)
