class MainController < ApplicationController
  def abc
  end

  def xxx
  	a = params[:a].to_i 
  	b = params[:b].to_i
  	@result = a + b
  end

  def welcome
  end

  def contact
  end

  def test
    a = params[:id]
    @u = User.find(a)
  end
end
