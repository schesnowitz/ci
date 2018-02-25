class ApplicationController < ActionController::Base
  before_action :app_setting
  before_action :configure_permitted_parameters, if: :devise_controller?


  def app_setting
    @app_setting = AppSetting.find(1)
  end

  def the_fallback
    flash[:danger] = 'You are not authorized to access this area'
    redirect_back(fallback_location: root_path)
  end 

  
  def not_administrator
    if !current_user.try(:admin?)
      flash[:danger] = "This resource does not exist or is reserved for administrators."
      redirect_back(fallback_location: root_path)
    end
  end


  def is_admin?
    if !current_user.try(:admin?)
      the_fallback
    end
  end
 
  def user_subscribed
    if !current_user.stripe_subscription_id?
      flash[:danger] = 'You need an active subscription!'
      redirect_to(new_subscription_path)
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:admin, :stripe_id, :stripe_subscription_id])
  end
end
