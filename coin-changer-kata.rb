def make_change(amount, coins = [25,10,5,1])
  coins.sort.
        reverse.
        map{|coin| f = amount/coin; amount %= coin; Array.new(f){coin} }.
        flatten
end

puts make_change(87)
