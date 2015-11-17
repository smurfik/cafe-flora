class Menu < ActiveRecord::Base
  # validations will go here

  has_many :menu_sections
end
