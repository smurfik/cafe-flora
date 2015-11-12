class MenuItem < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, format: {with: /\d+[.]\d{2}/ }
end
