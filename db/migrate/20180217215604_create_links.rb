class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :url
      t.string :name
      t.boolean :open_in_new_tab

      t.timestamps
    end
  end
end
