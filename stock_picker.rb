


def stock_picker(array)
  # variables for the day to buy, the day to sell, and max for maximum profit
  buy_day = 0
  sell_day = 0
  max_profit = 0
  
  # nested array for calculation
  array.each_with_index do |elementA, indexA|
    array.each_with_index do |elementB, indexB|

      profit = elementB - elementA
      # assign profit to max and indicies to buy/sell days when conditions met
      if  profit > max_profit && indexA < indexB
        max_profit = profit
        buy_day = indexA
        sell_day = indexB
        
      end
    end
  end
  # returns best days to buy (a) and sell (b) as an array
  p [buy_day,sell_day]
end

#sample array of prices
array_of_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

stock_picker(array_of_prices)