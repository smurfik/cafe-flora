class MenuSection < ActiveRecord::Base
  validates :name, presence: true, uniqueness: { scope: :menu_id }

  has_many :menu_items
  belongs_to :menu
end
