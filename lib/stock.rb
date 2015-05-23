class Stock
  attr_accessor :stock_name, :share_price, :no_of_shares
  def initialize(options = {})
  @no_of_shares = options[:no_of_shares]
  @stock_name = options[:stock_name]
  @share_price = options[:share_price]
  end
end
