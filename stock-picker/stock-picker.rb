
def stock_picker(days)
  max_profit = 0
  best_sell = 0
  best_buy = 0

  days.each_with_index do |day_to_buy, buy_index|
    remaining_days = days[buy_index + 1..-1]

    unless remaining_days.empty?
      remaining_days.each_with_index do |day_to_sell, sell_index|
        profit = day_to_sell - day_to_buy
        if profit > max_profit
          max_profit = profit
          best_sell = buy_index + 1 + sell_index
          best_buy = buy_index
        end
      end
    end
  end

  [best_buy, best_sell]
end



# > stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12

# c = [1,2,3,4,5,6,7,8]
# c[3 + 1..-1]  => [5, 6, 7, 8]
# c[0..3] => [1, 2, 3, 4]
# index of 4? how to get to 3 ?
#

p stock_picker([17,3,6,9,15,8,6,1,10])
