class MenuItemsController < ApplicationController

  def add
    @page_content     = "page-content"
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

end
