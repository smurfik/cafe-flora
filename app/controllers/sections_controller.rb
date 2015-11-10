class SectionsController < ApplicationController

  def index
    @sections = MenuSection.all
  end

end
