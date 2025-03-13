class HomeController < ApplicationController
  def index
    render({ :templates => "home/index" })
  end
end
