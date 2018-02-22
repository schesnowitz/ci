class CreateTemplateOnes < ActiveRecord::Migration[5.2]
  def change
    create_table :template_ones do |t|
      t.boolean :about_image_show_default, default: false 
      t.boolean :about_hide, default: false
      t.string :about_title
      t.string :about_text
      t.string :about_text_2
      t.string :about_image
      t.boolean :service_hide, default: false
      t.string :service_icon_1
      t.string :service_title_1
      t.string :service_text_1
      t.string :service_icon_2
      t.string :service_title_2
      t.string :service_text_2
      t.string :service_icon_3
      t.string :service_title_3
      t.string :service_text_3
      t.string :service_icon_4
      t.string :service_title_4
      t.string :service_text_4
      t.string :service_title_5
      t.string :service_text_5
      t.boolean :process_hide, default: false 
      t.string :main_process_title
      t.string :main_process_title_text
      t.string :process_icon_1
      t.string :sub_title_1
      t.string :process_li_1
      t.string :process_li_2
      t.string :process_li_3
      t.string :process_li_4
      t.string :process_icon_2
      t.string :sub_title_2
      t.string :process_li_5
      t.string :process_li_6
      t.string :process_li_7
      t.string :process_li_8
      t.string :process_icon_3
      t.string :sub_title_3
      t.string :process_li_9
      t.string :process_li_10
      t.string :process_li_11
      t.string :process_li_12
      t.boolean :header_hide, default: false
      t.string :header_title 
      t.string :header_text
      t.string :header_image
      t.string :header_svg
      t.boolean :header_use_default_svg, default: true
      t.boolean :header_use_default_image, default: true
      t.boolean :contact_hide, default: false
      t.string :contact_title
      t.string :contact_text
      t.boolean :contact_sender_hide_name, default: false  
      t.string :contact_sender_name
      t.boolean :contact_sender_hide_email, default: false
      t.string :contact_sender_email
      t.boolean :contact_sender_hide_phone, default: false
      t.string :contact_sender_phone
      t.boolean :contact_sender_hide_message, default: false
      t.string :contact_sender_message
      t.string :email_address_1
      t.string :email_address_2 
      t.string :email_address_3
      t.boolean :action_hide, default: false
      t.string :action_text_1
      t.string :action_text_2
      t.string :action_text_3
      t.string :action_text_4
      t.string :action_text_5
      t.string :action_text_6   
      t.string :action_text_7
      t.string :action_button_text
      t.boolean :action_use_default_image, default: true
      t.string :action_image 
      t.boolean :testimonial_hide, default: false
      t.boolean :portfolio_carousel_hide, default: false
      t.boolean :portfolio_header_hide, default: false
      t.string :portfolio_header_title
      t.string :portfolio_header_text
      t.boolean :portfolio_grid_hide, default: false
      t.boolean :footer_hide, default: false
      t.boolean :footer_hide_telephone, default: false
      t.string :footer_icon_telephone
      t.string :footer_telephone_title, default: false
      t.string :footer_telephone_number
      t.boolean :footer_hide_address, default: false
      t.string :footer_icon_address
      t.string :footer_address_title
      t.string :footer_address_street
      t.string :footer_address_city
      t.string :footer_address_state
      t.string :footer_address_postal_code
      t.boolean :footer_hide_email, default: false
      t.string :footer_icon_email
      t.string :footer_email_title
      t.string :footer_email_address
      t.boolean :footer_hide_social_1, default: false 
      t.string :footer_social_icon_1
      t.string :footer_social_url_1
      t.boolean :footer_hide_social_2, default: false
      t.string :footer_social_icon_2
      t.string :footer_social_url_2
      t.boolean :footer_hide_social_3, default: false
      t.string :footer_social_icon_3
      t.string :footer_social_url_3
      t.boolean :footer_hide_social_4, default: false
      t.string :footer_social_icon_4
      t.string :footer_social_url_4
      t.boolean :footer_hide_social_5, default: false
      t.string :footer_social_icon_5
      t.string :footer_social_url_5
      t.boolean :footer_hide_social_6, default: false
      t.string :footer_social_icon_6
      t.string :footer_social_url_6
      t.boolean :footer_use_default_image, default: true
      t.string :footer_image
      t.boolean :navigation_hide, default: false
      t.string :navigation_title
      t.boolean :newsletter_hide, default: false
      t.string :newsletter_title
      t.integer :testimonial_count, default: 2
      t.string :portfolio_grid_title
      t.string :portfolio_grid_text

      t.timestamps
    end
  end
end
