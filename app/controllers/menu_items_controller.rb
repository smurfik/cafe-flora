class MenuItemsController < ApplicationController

  def add
    @page_content     = "page-content"
    @menus                     = Menu.all 
    @menu_item                 = MenuItem.new
    @menu_item.name            = params[:menu_item_name]
    @menu_item.price           = params[:menu_item_price]
    @menu_item.description     = params[:menu_item_description]
    @menu_item.note            = params[:menu_item_note]
    @menu_item.menu_section_id = params[:sec_id]
    @menu                      = Menu.find(params[:menu_id])
    if @menu_item.save
      redirect_to add_item_path(params[:menu_id], params[:sec_id])
    else
      @menu_items              = MenuItem.all
      @menu_section            = MenuSection.find(params[:sec_id])
      render "menu_sections/show"
    end
  end

  def edit_item
    @menu_item             = MenuItem.find(params[:item_id])
    @menu_item.name        = params[:item][:name]
    @menu_item.description = params[:item][:description]
    @menu_item.note        = params[:item][:note]
    @menu_item.price       = params[:item][:price]
    @menu_item.save
    redirect_to show_section_path(params[:menu_id], params[:sec_id])
  end

  def delete_item
    @menu_item             = MenuItem.find(params[:item_id])
    @menu_item.destroy
    redirect_to show_section_path(params[:menu_id], params[:sec_id])
  end
end
