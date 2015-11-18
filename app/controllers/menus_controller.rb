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

end
