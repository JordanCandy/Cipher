stock = [17, 3, 6, 9, 15, 8, 6, 1, 10]

max_profit = 0
buy_day = nil
sell_day = nil

stock.each_with_index do |price, day|
  if buy_day.nil? || price < stock[buy_day]
    buy_day = day
    sell_day = day
  elsif price > stock[sell_day]
    sell_day = day
  end

  max_profit = [max_profit, stock[sell_day] - stock[buy_day]].max
end

puts "Maximum profit: #{max_profit}"
puts "Buy on day #{buy_day}, sell on day #{sell_day}"
