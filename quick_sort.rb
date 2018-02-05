class Array
  def quicksort
    return [] if empty?

    # [34, 2, 1, 5, 3]
    # [34, 2, 5, 3] // pivot == 1
    # left = [34, 2] // right = [5, 3]

    pivot = delete_at(rand(size))

    # passing in pivot with the 'greater than method'
    # looking at value thats getting called, everthing to left
    # put in 'left', everything to the right of pivot
    # put in 'right'
    left, right = partition(&pivot.method(:>)) 

    return *left.quicksort, pivot, *right.quicksort
  end
end

arr = [34, 2, 1, 5, 3]
p arr.quicksort