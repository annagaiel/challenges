 # Problem: Insertion Sort
 # Prompt: Given an unsorted array of numbers, return a sorted array using insertion sort.
 # Input:  An unsorted array
 # Output: A sorted array
 # Example: input = [3,9,1,4,7] , output = [1,3,4,7,9]
 # What are the time and auxilliary space complexity?

def compareShift(index)
  element = input[index]
  while index > 0 and element < input[index - 1]
    index --
  end
    input[index] = element

  i = 0
  while i < input.length
    compareShift(i)
    i++
  end

end

compareShift([3,9,1,4,7])
