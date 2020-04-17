require './products.rb'
require './controller.rb'

cola = Products.new(name: "コカコーラ", price: 500)
saider = Products.new(name: "サイダー", price: 200)
orange = Products.new(name: "オレンジジュース", price: 300,)
coffee = Products.new(name: "コーヒー", price: 150)
pepper = Products.new(name: "ドクターペッパー", price: 450)
tea = Products.new(name: "お茶", price: 250)
water = Products.new(name: "おいしい水", price: 350)
milk = Products.new(name: "牛乳", price: 600)
apple = Products.new(name: "リンゴジュース", price: 550)
remon = Products.new(name: "CCレモン", price: 150)

drinks = [cola, saider, orange, coffee, pepper, tea, water, milk, apple, remon]

# 商品一覧
drink_list(drinks)

# 商品を選んでその商品が存在するか確認する
seach_drink(drinks)

# お会計
calculation