class MenuItemsController < ApplicationController

  def add
    @menu_item                 = MenuItem.new
    @menu_item.name            = params[:menu_item_name]
    @menu_item.price           = params[:menu_item_price]
    @menu_item.description     = params[:menu_item_description]
    @menu_item.note            = params[:menu_item_note]
    @menu_item.menu_section_id = params[:id]
    if @menu_item.save
      redirect_to "/menu_sections/#{@menu_item.menu_section_id}"
    else
      @menu_items              = MenuItem.all
      @menu_section            = MenuSection.find(params[:id])
      render "menu_sections/show"
    end
  end

end
