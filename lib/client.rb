class Client
  attr_accessor :balance, :name, :portfolios
  def initialize(options={})
    @name = options[:name]
    @balance = options[:balance]
    @portfolios = []
  end

 # def total_balance
 #    client_balance = clients.map do |client_portfolio, client_value|
 #      clients.length * apartment_value.rent
 #    end
 #    apt_cost_array.inject(:+)
 #  end

end
# def name_client
# client = Client.new({name:'Bob'})
# end

# end
