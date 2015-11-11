class MenuSectionsController < ApplicationController

  def index
    @menu_sections = MenuSection.all
    @menu_items = MenuItem.all
  end

  def show
    @menu_item  = MenuItem.find(params[:id])
    @menu_items = MenuItem.all
  end
end
