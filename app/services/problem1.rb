#############################################################################
##
## PROBLEM 1
##
## Fill in function below
##
#############################################################################
#
# Given a list of strings, and integer, i
# find all strings less then length i, then group
# and count the number of strings by their length
#
# example:
# strings = [ 'abc', 'defg', 'hi' ,'a', 'b', 'ze', 'ae' ]
# i = 4
#
# output = { 1: 2, 2: 3, 3: 1 }
#
class Problem1
  STRINGS = [ 'abc', 'defg', 'hi' ,'a', 'b', 'ze', 'ae' ]
  I = 4

  def initialize
  end
  
  def call
    filter_and_group(STRINGS, I)
  end

  private

  def filter_and_group(strings, i)
    new_strings = strings.select { |string| string.size < i }
                         .group_by { |string| string.size }
                         .sort.to_h

    new_strings.each {|k,v| new_strings[k] = v.size }
  end
end


