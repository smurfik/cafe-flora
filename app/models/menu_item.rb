class MenuItem < ActiveRecord::Base
  validates :name, presence: true, uniqueness: { scope: :menu_section_id }
  validates :price, presence: true, format: {with: /\d+[.]\d{2}/ }

  belongs_to :menu_section

  def clean_note
    note.to_s.delete('"').delete('[').delete(']')
  end

end
