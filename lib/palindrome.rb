def palindrome?(str)
  forward = str.downcase.gsub(/\s+/, "")
  backward = forward.reverse
  if forward == backward
    true
  else
    false
  end
end
