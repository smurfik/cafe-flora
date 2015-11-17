class MenuSectionsController < ApplicationController

  def index
    @menu_sections            = MenuSection.all
    @menu_items               = MenuItem.all
  end

  def show
    @menu_section             = MenuSection.find(params[:sec_id])
    @menu_items               = MenuItem.all
    @menu                     = Menu.find(params[:menu_id])
  end

  def new
    @menu_section             = MenuSection.new
    @menu_id                  = params[:menu_id]
  end

  def edit
  end

  def add
    @menu_section             = MenuSection.new
    @menu_section.name        = params[:menu_section_name]
    @menu_section.description = params[:menu_section_description]
    @menu_section.menu_id     = params[:menu_id]
    if @menu_section.save
      redirect_to add_section_path(@menu_section.menu_id)
    else
      @menu_sections          = MenuSection.all
      render :new
    end
  end
end
