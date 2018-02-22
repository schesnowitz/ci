class CreateAppSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :app_settings do |t|
      t.string :tab_name
      t.string :theme_name 
      t.string :front_end_color
      t.string :app_title
      t.string :app_email_1
      t.string :app_email_2
      t.string :app_email_title_1
      t.string :app_email_title_2
      t.string :navbar_color 
      t.timestamps
    end
  end
end


