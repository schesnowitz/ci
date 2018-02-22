class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :button_text
      t.string :image_1
      t.string :image_2
      t.string :modal_name
      t.string :modal_description
      t.string :modal_client
      t.date :modal_date
      t.string :modal_service
      t.string :modal_image_1
      t.string :modal_image_2
      t.string :modal_image_3
      t.string :modal_image_4
      t.integer :template_one_id

      t.timestamps
    end
  end
end
