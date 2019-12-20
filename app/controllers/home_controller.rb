class HomeController < ApplicationController
	


before_action :authenticate_hotel!, except: [:index]
  def index
  end
end
