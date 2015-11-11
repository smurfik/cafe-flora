class SectionsController < ApplicationController

  def index
  end

  def show
    @item  = MenuItem.find(params[:menu_section_id])
    @items = MenuItem.all
  end
end
