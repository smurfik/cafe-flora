class ItemsController < ApplicationController

  def index
    @items = MenuItem.all
  end

  def show

  end

end
