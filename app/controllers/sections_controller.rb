class SectionsController < ApplicationController

  def index
    @sections = MenuSection.all
    @items = MenuItem.all
  end

end
