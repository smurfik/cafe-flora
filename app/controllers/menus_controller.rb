class MenusController < ApplicationController

  def index
    @menus            = Menu.all
  end

  def show
    @menu             = Menu.find(params[:menu_id])
  end

  def preview
    @menu             = Menu.find(params[:menu_id])
  end

end
