Rails.application.routes.draw do



  resources :links

  resources :courses do
    resources :posts do
      resources :comments
    end
  end
  resources :posts do
    collection {post :import}
  end
  resources :comments do
    collection {post :import}
  end
  resources :app_settings

  devise_for :users, controllers: { registrations: 'user_registrations/registrations'}

  resources :grid_images, only: [:create, :new, :destroy]

  resources :template_ones do
    resources :projects
    resources :grid_image_categories, only: [:create, :new, :destroy]
    resources :pages
  end



 
  resources :incoming_contacts

  root to: 'template_ones#show'
  get 'edit_about', to: 'template_ones#edit_about'
  get 'edit_services', to: 'template_ones#edit_services'
  get 'edit_process', to: 'template_ones#edit_process' 
  get 'edit_header', to: 'template_ones#edit_header' 
  get 'edit_contact', to: 'template_ones#edit_contact' 
  get 'edit_action', to: 'template_ones#edit_action' 
  get 'edit_testimonial', to: 'template_ones#edit_testimonial' 
  get 'edit_portfolio_carousel', to: 'template_ones#edit_portfolio_carousel'
  get 'edit_portfolio_carousel_heading', to: 'template_ones#edit_portfolio_carousel_heading'
  get 'edit_portfolio_grid', to: 'template_ones#edit_portfolio_grid'
  get 'edit_footer', to: 'template_ones#edit_footer'
  get 'edit_navigation', to: 'template_ones#edit_navigation'
  get 'edit_newsletter', to: 'template_ones#edit_newsletter'


  require 'sidekiq/web'
  require 'sidekiq/cron/web'

  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  authenticate :user, lambda { |u| u.admin? } do
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  end
end


