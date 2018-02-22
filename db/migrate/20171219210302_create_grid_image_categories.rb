class CreateGridImageCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :grid_image_categories do |t|
      t.string :name
      t.integer :template_one_id, index: true

      t.timestamps
    end
  end
end
