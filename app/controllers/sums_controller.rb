require 'csv'

class SumsController < ApplicationController
protect_from_forgery except: :create

  def create
    file = params[:file]

    lines = CSV.read file.path
    result = lines.collect(&:first).map(&:to_f).reduce(&:+)

    render plain: '%.2f' % result
  end
end