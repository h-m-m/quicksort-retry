module QuickSort

  def self.sort!(list)
    sort_iterate!(list)
  end

  def self.sort_iterate!(list, low = 0, high = list.length - 1, accumulator = [], partition_index = 0)
    if low < high then
      partition_index = partition!(list, low, high)
      accumulator.push([list, partition_index + 1, high])
      accumulator.push([list, low, partition_index - 1])
    end
    raise 'loop'
  rescue RuntimeError => e
    # puts "caught: #{e}"
    if accumulator.length > 0
      list,low,high = accumulator.pop
      retry
    end
    return list
  end
  

  def self.partition!(list, low, high)
    pivot_index = choose_pivot(low, high)
    pivot_value = list[pivot_index]
    list[pivot_index], list[high] = list[high], list[pivot_index]
    partition_index = low
    (low..high-1).each do |loop_index|
      if list[loop_index] < pivot_value
        list[loop_index], list[partition_index] = list[partition_index], list[loop_index]
	partition_index = partition_index + 1
      end
    end
    list[partition_index], list[high] = list[high], list[partition_index]
    return partition_index
  end

  def self.choose_pivot(a,b)
    (a + b) / 2
  end

end
