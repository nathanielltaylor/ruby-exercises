def caesar_cypher(str, n)
  letters = str.split('')
  n.times { letters.each { |l| l.succ! if l.match(/^[[:alpha:]]$/) } }
  letters.join
end

def decode(str, n)
  lower = ("a".."z").to_a
  upper = ("A".."Z").to_a
  letters = str.split('')
  n.times do
    letters.map! do |l|
      if l.match(/^[[:alpha:]]$/)
        if l.upcase == l
          l = upper[upper.index(l) - 1]
        else
          l = lower[lower.index(l) - 1]
        end
      else
        l
      end
    end
  end
  letters.join
end
