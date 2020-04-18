class Products
  attr_reader :name, :price, :id

  def initialize(**params)
    @name = params[:name]
    @price = params[:price]
    @id = params[:id]
  end
end






