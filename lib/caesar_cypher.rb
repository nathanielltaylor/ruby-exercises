require 'pry'

def caesar_cypher(str, n)
  letters = str.split('')
  n.times { letters.each { |l| l.succ! if l.match(/^[[:alpha:]]$/) } }
  letters.join
end
