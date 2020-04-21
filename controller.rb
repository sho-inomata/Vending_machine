require './products.rb'

def making_drinks
  [
  Products.new(name: "コカコーラ", price: 500, id: 1),
  Products.new(name: "サイダー", price: 200, id: 2),
  Products.new(name: "オレンジジュース", price: 300, id: 3),
  Products.new(name: "コーヒー", price: 150, id: 4),
  Products.new(name: "ドクターペッパー", price: 450, id: 5),
  Products.new(name: "お茶", price: 250, id: 6),
  Products.new(name: "おいしい水", price: 350, id: 7),
  Products.new(name: "牛乳", price: 600, id: 8),
  Products.new(name: "リンゴジュース", price: 550, id: 9),
  Products.new(name: "CCレモン", price: 150, id: 10)
  ]
end

# 商品を配列にまとめる
def set_drinks(products)
  @drinks = products
end

# 商品一覧メソッド
def drink_list
  
  puts "商品一覧"
  puts "-----------------------------------"
  @drinks.each do |drink|
    puts "商品番号:#{drink.id}　#{drink.name}:#{drink.price}円"
  end
  puts "-----------------------------------"
  puts "商品番号を選んでください"
end

# 商品を選んでその商品が存在するか確認する
def seach_drink
  loop {
    # 商品名を受け取る
    @product_id = gets.to_i

    @select_drink = @drinks.find {|drink| drink.id == @product_id}

    # 変数に値が入っているか確認
    if @select_drink.nil?
      puts "その商品はありません。"  
      puts "もう一度選んでください。"
    else
      puts "#{@select_drink.price}円入れてください"
      break
    end
  }
end

def calculation
  # お金を投入
  drink_price = gets.to_i

  if drink_price >= @select_drink.price
    change = drink_price - @select_drink.price
    puts "ガランッ！！#{@select_drink.name}が出てきた！！"
    puts "お釣りは#{change}円です"
  else
    puts "お金が足りません" 
  end
end