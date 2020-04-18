require './products.rb'
require './controller.rb'

cola = Products.new(name: "コカコーラ", price: 500, id: 1)
saider = Products.new(name: "サイダー", price: 200, id: 2)
orange = Products.new(name: "オレンジジュース", price: 300, id: 3)
coffee = Products.new(name: "コーヒー", price: 150, id: 4)
pepper = Products.new(name: "ドクターペッパー", price: 450, id: 5)
tea = Products.new(name: "お茶", price: 250, id: 6)
water = Products.new(name: "おいしい水", price: 350, id: 7)
milk = Products.new(name: "牛乳", price: 600, id: 8)
apple = Products.new(name: "リンゴジュース", price: 550, id: 9)
remon = Products.new(name: "CCレモン", price: 150, id: 10)

# 商品を配列にまとめる
set_drinks(cola, saider, orange, coffee, pepper, tea, water, milk, apple, remon)

# 商品一覧
drink_list

# 商品を選んでその商品が存在するか確認する
seach_drink

# お会計
calculation