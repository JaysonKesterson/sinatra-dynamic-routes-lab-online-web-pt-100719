require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    params[:name].reverse
  end
  
   get "/square/:number" do
    @square = params[:number].to_i * params[:number].to_i
    @square.to_s
  end
  
   get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase * @number.to_i}"
  end
  
   get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]+" "+params[:word2]+" "+params[:word3]+" "+params[:word4]+" "+params[:word5]}."
  end
  
  get '/:operation/:number1/:number2' do
    if params[:operation] == "multiply"
      @product = params[:number1].to_i * params[:number2].to_i
      @product.to_s
    elsif params[:operation]== "divide"
      @quotient = params[:number1].to_i / params[:number2].to_i
      @quotient.to_s
    elsif params[:operation]== "subtract"
      @difference = params[:number1].to_i - params[:number2].to_i
      @difference.to_s
    else 
      @sum = params[:number1].to_i + params[:number2].to_i
      @sum.to_s
    end
  end

end