def minimum_coins(n)
  coin_values, coins = [100, 50, 25, 10, 5, 1], []
  coin_values.each do |v|
    num_coins = n / v
    n -= (v * num_coins)
    num_coins.times { coins << v}
  end
  coins
end
