require 'csv'

class FiltersController < ApplicationController
   protect_from_forgery except: :create

  def create
    file = params[:file]
    sum = 0
    CSV.foreach(file.path) do |r| 
    	if r[2].to_f % 2 != 0
    		sum += r[1].to_f
    	end
   	end

    sum = sum.ceil(2)
    render plain: '%f' % sum
  end
end
