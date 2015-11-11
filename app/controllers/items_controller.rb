class ItemsController < ApplicationController

  def index
    @items = MenuItem.all
  end

end
