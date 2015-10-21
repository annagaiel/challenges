# Bottom down - single recursion
def bottom_nthFib(n)
  fib = [0,1]

  def searchFib(i, limit)
    return if i > limit

    fib[i] = fib[i - 2] + fib[i - 1]
    searchFib(i + 1, limit)
  end

  searchFib(2, n)

  return fib[n]
end

# Top down - multiple recursion
def top_nthFib(n)
  result = ""

  def searchFib(index)
    if index < 2
      return index
    else
      return searchFib(index - 2) + searchFib(index -1)
    end
  end

  result = searchFib(n)

  return result
end

--------5
----3-------4
--1--2     2--3
    0--1  0--1 1--2
                 0--1







# iterative - looping structure
# creating own stack - while loops
# dynamic programming

