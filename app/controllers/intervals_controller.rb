class IntervalsController < ApplicationController
  protect_from_forgery except: :create

  def create
    file = params[:file]
    max_sum = 0
    i = 0
    current_sum = 0
    count = 0 # num of rows
    CSV.foreach(file.path) do |r| # every row
    	count += 1
    end 
    CSV.foreach(file.path) do |r|
        CSV.foreach(file.path) do |a+r| 
        	if i == 30 break end
        	i += 1
        	current_sum += r[a+r]
        end
        if current_sum>max_sum
    		max_sum = current_sum
   		end
    end 
    
    max_sum = result.ceil
    render plain: '%.2f' % max_sum
  end

end
