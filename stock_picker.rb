array = [1, 7, 11]


def stock_picker(array)
  new_array = array.map{|element| element}
  return_array = []
  a = 0
  b = 0
  

  new_array.each_with_index do |elementA, indexA|
    array.each_with_index do |elementB, indexB|
       profit = elementB - elementA
      if !defined?(max) || profit > max
        max = profit
        a = indexA
        b = indexB
        puts "max = #{max} a = #{a} b = #{b}"
      end
    end
  end
  
  [a,b]
end


 print stock_picker(array)