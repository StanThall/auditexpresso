class PagesController < ApplicationController
  def show
  	@pub = Pub.find(rand(1..6))
  end
end