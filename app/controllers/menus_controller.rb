class MenusController < ApplicationController

  def index
    @menus            = Menu.all
    @page_content     = "page-content"
    @header           = "header"
  end

  def show
    @menu             = Menu.find(params[:menu_id])
    @page_content     = "page-content"
    @header           = "header"
    @menus            = Menu.all
  end

  def preview
    @page_content     = "preview page-content"
    @menu             = Menu.find(params[:menu_id])
    @header           = "header-preview"
  end

  def add
    @page_content     = "page-content"
    @menu             = Menu.new
    @menu.name        = params[:menu_name]
    if @menu.save
      redirect_to all_menus_path
    else
      @menus          = Menu.all
      render "menus/index"
    end
  end

  def delete_menu
    @menu = Menu.find(params[:menu_id])
    @menu.destroy
    redirect_to all_menus_path
  end

  def edit_name
    @menu = Menu.find(params[:menu_id])
    @menu.name = params[:menu_name]
    @menu.save
    redirect_to show_menu_path(@menu.id)
  end

end
