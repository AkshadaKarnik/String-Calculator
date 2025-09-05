**String Calculator TDD Kata**

A simple implementation of the String Calculator Kata using Test-Driven Development (TDD).

**Requirements:-**
- Language: (Ruby)
      Minimum: ruby 2.7+
      Recommended: Ruby 3.x
      Used:    ruby 3.2.2
- RSpec: ~> 3.x
     Testing framework: (RSpec)
 
**Features:-**
add(string numbers)

*Cases used are as follows:* 
I/P -> O/P

"" -> 0

"1" -> 1

"1,5" -> 6

Handles any number of inputs.

Supports newlines as delimiters ("1\n2,3" → 6).

Custom delimiters ("//;\n1;2" → 3).

Throws exception on negatives:

"negative numbers not allowed: -2,-5"

**How to Run**
# run tests
bundle exec rspec

**TDD Approach**
- Started with the simplest case (empty string) and continued till last case for raising exception for negative numbers.
- Added one feature at a time.
- Wrote tests first, then only implementation. (TDD Approach as expected)
- Continuos refactoring during tests and final refactored code in the last commit.
  
