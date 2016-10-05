
def stock_picker (price)
price.collect { |n|
	while price.index(price.max) == 0
		price.delete(price.max)
	end
	while price.index(price.min) > price.index(price.max)
		price.delete(price.min)
	end
	n
}
buy_sell = [price.min, price.max]
return buy_sell
end

stock_picker([15, 5, 4, 10, 3, 15])