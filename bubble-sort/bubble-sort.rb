
def bubble_sort(arr)
  sorted = false

  while !sorted
    swaps = 0

    arr.each_with_index do |item, i|
      unless i == arr.length - 1
        if item.is_a?(String)
          if item.casecmp(arr[i + 1]) > 0
            arr[i], arr[i + 1] = arr[i + 1], arr[i]
            swaps += 1
          end
        elsif item > arr[i + 1]
          arr[i], arr[i + 1] = arr[i + 1], arr[i]
          swaps += 1
        end
      end
    end

    sorted = swaps.zero?
  end

    arr
end
