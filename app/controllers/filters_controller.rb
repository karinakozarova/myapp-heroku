require 'csv'

class FiltersController < ApplicationController
	protect_from_forgery except: :create

  def create
    file = params[:file]
    sum = 0
    CSV.foreach(file.path) do |r| 
    	if r[2]%2 != 0
    		sum += r[1]
    	end
   	end

   	sum = sum.ceil
    render plain: '%.2f' % sum
  end
end
