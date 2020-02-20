require_relative 'config/environment'

class App < Sinatra::Base

    get '/reversename/:name' do
      @user_name = params[:name]
      "#{@user_name.reverse}"
    end

    get '/square/:number' do
      @num = params[:number].to_i
      "#{@num ** 2}"
    end
    
    get '/say/:number/:phrase' do 
      @num = params[:number].to_i
      @phrase = params[:phrase]
      "#{@phrase}" * @num
    end 

    get '/say/:word1/:word2/:word3/:word4/:word5' do 
      "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    end 

    get '/:operation/:number1/:number2' do 
      @num1 = params[:number1].to_i
      @num2 = params[:number2].to_i
      @operation = params[:operation]
        if @operation == "subtract"
          "#{@num1 - @num2}"
        elsif @operation == "add"
          "#{@num1 + @num2}"
        elsif @operation == "multiply"
          "#{@num1 * @num2}"
        elsif @operation == "divide"
          "#{@num1 / @num2}"
        end 
    end 
end