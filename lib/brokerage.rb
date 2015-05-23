class Brokerage
  attr_accessor :name, :clients
  def initialize(options={})
    @name = options[:name]
    @clients = []
  end
end

 def get_all_clients
  nested_clients_array = clients.map do |client_key, client_value|
  client.balance.client.porfolio
  end
  nested_clients_array.flatten

end