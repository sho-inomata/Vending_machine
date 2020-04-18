
def set_drinks(cola, saider, orange, coffee, pepper, tea, water, milk, apple, remon)
  @drinks = [cola, saider, orange, coffee, pepper, tea, water, milk, apple, remon]
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

    @drinks.each do |drink|
      if  @product_id == drink.id
          @select_drink = drink
      end
    end

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