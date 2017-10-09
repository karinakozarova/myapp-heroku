require 'csv'

class SumsController < ApplicationController
protect_from_forgery except: :create

  def create
    file = params[:file]
    result = 0
    CSV.foreach(file.path){|r| result += r[0].to_f}
    result = result.ceil
    render plain: '%.2f' % result
  end
end