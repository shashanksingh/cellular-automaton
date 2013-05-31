class HomeController < ApplicationController
  def index
  	@grid = Automaton.last
  	respond_to do |format|
  		format.html #render index.html.erb
  		format.xml { render :xml => @posts }
  	end
  end
end
