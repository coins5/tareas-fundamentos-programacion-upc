t = 7
init = 5
porc = 0.045

for i in 1..6
	init = init * (1 + porc)
end
puts init