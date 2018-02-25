class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :title
      t.string :url
      t.string :string_1
      t.string :string_2
      t.string :string_3
      t.string :string_4
      t.string :string_5
      t.string :string_6
      t.string :string_7
      t.string :string_8
      t.string :string_9
      t.string :string_10
      t.string :string_11
      t.string :string_12
      t.string :string_13
      t.string :string_14
      t.string :string_15
      t.integer :template_one_id
      t.boolean :hide, default: false
      t.boolean :show_as_solo_link, default: false
      t.boolean :show_in_dropdown, default: false

      t.timestamps
    end
  end
end
