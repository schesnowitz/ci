class CreateGridImages < ActiveRecord::Migration[5.2]
  def change
    create_table :grid_images do |t|
      t.string :name
      t.string :description
      t.string :image
      t.integer :grid_image_category_id, index: true

      t.timestamps
    end
  end
end
