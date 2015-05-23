require 'pry'
require_relative 'brokerage'
require_relative 'portfolio'
require_relative 'stock'
require_relative 'client'

#Whenever you create a client push the client into the clients array
clients = []
portfolio = []
stocks = []

brokerage = Brokerage.new({name: 'Barclays Stockbrokers', clients:['Joe']})

client1 = Client.new({name:'Joe',balance:750000,portfolios:[]})

brokerage.clients << client1

portfolio1 = Portfolio.new({name:'Energy',stocks:['GE','SolarWinds','GreenEnergie']})

portfolio2 = Portfolio.new({name: 'Banking',stocks:['US Bank','TD Bank','BofA']})
portfolio3 = Portfolio.new({name:'Tech',stocks:['AAPL','GOOG','AMZN']})

client1.portfolios << portfolio1 << portfolio2 << portfolio3

def menu
  puts `clear`
  puts'-' * 80
  puts '*** GASE ***'
  puts '1 - Create a client'
  puts '2 - Create a portfolio'
  puts '3 - Purchase Stocks'
  puts '4 - Sell Stocks'
  puts '5 - List all clients and their balances'
  puts "6 - List a client's portfolios and associated values"
  puts "7 - List all stocks in a portfolio and associated values"
  puts 'q - Quit program'
  print "--> "
  gets.chomp.downcase
end

response = menu

while response != 'q'
  case response
  when '1'#Create a client
    puts "Name:\n"
    name = gets.chomp
    puts "Balance \n"
    balance = gets.chomp.to_i
    puts "Portfolio name: \n"
    portfolios = gets.chomp
    puts "Portfolio name: \n"
    portfolios = gets.chomp
    puts "Portfolio name: \n"
    portfolios = gets.chomp
    client = Client.new({name: name, balance: balance, portfolios:portfolios
      })
    clients.push(client)
    puts "You have just added a new client #{client.name}"
    puts "Enter any key to continue"
    gets
  when '2'#Create a portfolio
  puts "Name:\n"
    name = gets.chomp
    puts "Stock ticker: \n"
    balance = gets.chomp
    puts "Stock ticker: \n"
    portfolios = gets.chomp
    puts "Stock ticker: \n"
    portfolios = gets.chomp
    puts "Stock ticker: \n"
    portfolios = gets.chomp
    portfolio = Portfolio.new({name: name, stocks: stocks})
    portfolio.push(portfolios)
    portfolio.push(stocks)
    puts "You have just added a new portfolio #{portfolio.name}"
    puts "Enter any key to continue"
    gets
  # when '3'#Purchase Stocks
  # when '4'#Sell Stocks
  when '5'#List all clients and their balances
    clients_array = brokerage.get_all_clients
    clients_array.each do |client|
    puts "#{clients.name}, £#{clients.balance}"
    end
  # when '6'#List a client's portfolios and associated values
  # when '7'#List all stocks in a portfolio and associated values
  end

  puts "-" * 80
  puts 'press enter to continue'
  gets
  response = menu
end