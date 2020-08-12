def stockPicker(array)
    newArray = array.clone
      if newArray.min == newArray.last
        newArray.delete_at(-1)
      end
    
      if newArray.max == newArray.first
        newArray.delete_at(0)
      end
    
      buy = newArray.min
      index = newArray.find_index(buy)
      minArray = newArray.clone
      minArray.slice!(index)
    
      sell = minArray.max
    
      indexOfBuy = array.find_index(buy)
      indexOfSell = array.find_index(sell)
      
      stockSell = [indexOfBuy, indexOfSell]
    
      return stockSell
    end
    
    stockPicker([10,3,2,8,1])
    