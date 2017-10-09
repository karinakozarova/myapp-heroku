class IntervalsController < ApplicationController
  protect_from_forgery except: :create

  def create
    file = params[:file]
    max_sum = 0
    current_sum = 0

    CSV.foreach(file.path) do |r| # every row
    	current_sum = 0
    	30.times do |r| current_sum += r[0]
    	if current_sum>max_sum
    		max_sum = current_sum
   		end
 	end

    max_sum = result.ceil
    render plain: '%.2f' % max_sum
  end

end
