class SectionsController < ApplicationController

  def index
    @sections = MenuSection.all
    @items = MenuItem.all
  end

  def show
    @item  = MenuItem.find(params[:menu_section_id])
    @items = MenuItem.all
  end
end
