require 'minitest/autorun'
require_relative 'QuickSort'

class QuickSortTest < MiniTest::Unit::TestCase
  def test_basic_sorting
    unsorted = [5,6,9,12,77,34,2,1,3]
    sorted = [1,2,3,5,6,9,12,34,77]
    assert_equal(sorted, QuickSort.sort!(unsorted))

  end
  
  def test_empty_array
    assert_equal([], QuickSort.sort!([]))
  end

  def test_already_sorted_array
    # skip
    sorted = [1,2,3,5,6,9,12,34,77]
    sorted2 = [1,2,3,5,6,9,12,34,77]
    assert_equal(sorted, QuickSort.sort!(sorted2))
  end

  def test_longer_array
    # skip
    unsorted = [78,25,60,12,32,
                67,71,26,34,40,
                44,21,89,50,50,
                74,42,60,89,87,
                20,29,55,63,73,
                76,12,75,44,48,
                25,40,4,86,57,
                93,65,58,85,1,
                15,8,44,8,12,
                96,74,34,84,54,
                83,47,10,78,14,
                92,19,39,24,13,
                9,41,95,48,21,
                33,62,30,49,8,
                54,54,35,20,22,
                99,24,90,37,28,
                15,60,62,40,6,
                15,99,6,18,60,
                96,21,64,27,31,
                76,33,58,34,3
               ]
    sorted = unsorted.sort
    assert_equal(sorted, QuickSort.sort!(unsorted))
  end
end
