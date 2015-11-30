class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :name
      t.text :description
      t.string :price
      t.text :note
      t.integer :menu_section_id

      t.timestamps null: false
    end
  end
end
