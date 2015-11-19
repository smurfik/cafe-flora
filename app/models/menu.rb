class Menu < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :menu_sections, dependent: :destroy
end
