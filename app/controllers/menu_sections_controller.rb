class MenuSectionsController < ApplicationController

  def index
    @menu_sections = MenuSection.all
    @menu_items = MenuItem.all
  end

  def show
    @menu_section  = MenuSection.find(params[:id])
    @menu_items    = MenuItem.all
  end

  def new
    @menu_section             = MenuSection.new
  end

  def add
    @menu_section             = MenuSection.new
    @menu_section.name        = params[:menu_section_name]
    @menu_section.description = params[:menu_section_description]
    if @menu_section.save
      redirect_to "/menu_sections/#{@menu_section.id}"
    else
      @menu_sections = MenuSection.all
      render :new
    end
  end
end
