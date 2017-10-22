require 'csv'
class IntervalsController < ApplicationController
	protect_from_forgery except: :create
        def create
                file = params[:file].path
		arr = Array.new 
		CSV.foreach(file).each_cons(30) do |chunk|
			arr.push chunk.map(&:first).map(&:to_f).reduce(&:+) 
		end
		render plain: "%.2f" % arr.max
	end
end
