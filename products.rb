class Products
  attr_accessor :name, :price

  def initialize(**params)
    @name = params[:name]
    @price = params[:price]
  end
end





