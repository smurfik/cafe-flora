class Menu < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

<<<<<<< HEAD
  has_many :menu_sections
  has_many :menu_items, through: :menu_sections
=======
  has_many :menu_sections, dependent: :destroy
>>>>>>> 01125bfe158e117252245c28dd367f9ec90f30c5
end
