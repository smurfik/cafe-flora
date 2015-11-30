class AddMenuIdToMenuSection < ActiveRecord::Migration
  def change
    add_column :menu_sections, :menu_id, :integer
  end
end
