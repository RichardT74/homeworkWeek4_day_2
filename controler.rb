require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/calculator.rb')

also_reload('./models/*')

# also_reload('./models/*')
get '/' do
	erb(:home)
end

get '/result' do
	erb :result
end

get '/check_win/:hand1/:hand2' do
	hand1 = params[:hand1]
	hand2 = params[:hand2]
	@calculation = RPSGame.check_win(hand1,  hand2)
	erb(:result)


end

# get '/multiply/:num1/:num2' do
# 	num1 = params[:num1].to_i
# 	num2 = params[:num2].to_i
#
# @calculation = Calculator.multiply(num1, num2)
# erb(:result)
# end
#
# get '/divide/:num1/:num2' do
# 	num1 = params[:num1].to_f
# 	num2 = params[:num2].to_f
# @calculation = Calculator.divide(num1, num2)
# erb(:result)
#
# end
#
# get '/subtract/:num1/:num2' do
# 	num1 = params[:num1].to_i
# 	num2 = params[:num2].to_i
# @calculation = Calculator.subtract(num1, num2)
# erb(:result)
# end

# get '/' do
# 	erb(:home)



# get '/about-us' do
# erb(:about_us)
# end
