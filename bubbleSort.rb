def sorter(arr)
  n = arr.length
  arr2 = arr.dup

  (0...n).each do |i|
    (i+1...n).each do |j|
      if arr2[i] > arr2[j]
        arr2[i], arr2[j] = arr2[j], arr2[i]
      end
    end
  end

  arr2
end

array = [3, 1, 4, 5, 9, 2, 2, 6]
puts sorter(array).inspect
