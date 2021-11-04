pizzas = {
	"cheese": 9,
	"pepperoni": 10,
	"vegetable": 11,
	"buffalo chicken": 12
}

pizzas["cheese"] = 8

if pizzas["vegetable"] < 12:
	print('vegetable')

pizzas["bacon"] = 14

for pie in pizzas:
	print(pie)

for pie, price in pizzas.items():
	print(price)

for pie, price in pizzas.items():
	print("A whole {} pizza costs ${}".format(pie, price))
