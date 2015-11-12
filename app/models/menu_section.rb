class MenuSection < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
end
