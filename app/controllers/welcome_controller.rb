class WelcomeController < ApplicationController
  def index
  	if params.has_key?(:a)&&params.has_key?(:b)
  		@a = params['a']
  		@b = params['b']
	end
  end

end
