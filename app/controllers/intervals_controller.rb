class IntervalsController < ApplicationController
  protect_from_forgery except: :create

  def create
    file = params[:file]
    max_sum = 0
    CSV.foreach(file.path) do |r|
    	current_sum = 0
    	30.times do |i|{current_sum = (r+i).to_f}
    	if current_sum > max_sum
    		max_sum = current_sum
    	end
 	end
    max_sum = result.ceil
    render plain: '%.2f' % max_sum
  end

end
