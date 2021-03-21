class HomeController < ApplicationController
  def index
    
    @api = StockQuote::Stock.new(api_key: "pk_2c74f5525ecb47eeb35aa68f763ae90b"),
    if params[:ticker] == ""
      @nothing ="Oh no! You won't make any cash money of you don't chose a stock ticker. Type something in!"
    elsif params[:ticker]
      
      begin
        @stock = StockQuote::Stock.quote(params[:ticker])
      rescue RuntimeError 
          @error = "Shoot! This company doesn't have stock options or it isn't a company at all. Maybe you can create it and make billions?!"
      else 
        p "All Good"
      ensure
        p "Done"
      end 

    end
  end

  def about
  end
end
