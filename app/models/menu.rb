class Menu < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :menu_sections
  has_many :menu_items, through: :menu_sections
end
