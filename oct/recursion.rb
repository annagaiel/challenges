# Prompt: Given a set S, return the power set P(S), which is a set of all subsets of S.
# Input:  A String
# Output: An Array with the power set of the input string
# Example: S = "abc", P(S) = ['', 'a', 'b','c','ab','ac','bc','abc']
# Note: There should not be any duplicates in the power set
# ('ab' and 'ba' are considered the same), and it will always begin with an empty string ('')

def power_Set(input)
  result = []
  var lib = {}

  def traverse(buildUp, index)
    if index == input.length
      return true if lib[buildUp] != nil
      result.push(buildUp)
      return
    end
    traverse(buildUp, index + 1)
    traverse(buildUp + input[index], index +1)
  end

  traverse("", result)
  return result

end

power_Set(abc)
