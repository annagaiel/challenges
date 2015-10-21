# Prompt: Write a function that checks if an input string has balanced parentheses.
#  Example: balancedParens(')');  // false
#           balancedParens('()'); // true
#           balancedParens(')(');  // false
#           balancedParens('(())');  // true

# Challenge Mode: Make your solution work for all types of brackets: (), [], {}

#  Example:  balancedParens('()[]{}'); // true
#            balancedParens('{[()]}');   // true
#            balancedParens('[(]{)}'); // false


def balancedParens(input)

  forward = { '(' => 'true',
              '[' => 'true',
              '{' => 'true'
            }

  backward = { ')' => '(',
               ']' => '[',
               '}' => '{'
             }

  store = []

end

balancedParens('()')
