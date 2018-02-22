class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title 
      t.text :body
      t.integer :user_id, index: true
      t.integer :course_id, index: true
      t.integer :lecture_number
      t.integer :section_number
      t.string :section_name
      t.timestamps
    end
  end
end
