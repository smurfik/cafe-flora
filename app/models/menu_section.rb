class MenuSection < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  # would we want to vaidate anything else for the :name attribute?
  # would we want to add validations for anything else?
end
