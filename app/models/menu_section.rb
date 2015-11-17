class MenuSection < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :menu_items
  belongs_to :menu
end
