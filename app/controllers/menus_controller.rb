class MenusController < ApplicationController

  def index
    @menus            = Menu.all
    @page_content     = "page-content"
  end

  def show
    @menu             = Menu.find(params[:menu_id])
    @page_content     = "page-content"
  end

  def preview
    @page_content     = "preview page-content"
    @menu             = Menu.find(params[:menu_id])
  end

  def add
    @page_content     = "page-content"
    @menu             = Menu.new
    @menu.name        = params[:menu_name]
    if @menu.save
      redirect_to all_menus_path
    else
      @menu          = Menu.all
      render "menus/show"
    end
  end

end
