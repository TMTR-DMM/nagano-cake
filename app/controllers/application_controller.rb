class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
      
  def after_sign_in_path_for(resource)
   if customer_signed_in? # ログイン後
      customer_customers_path(current_customer)
   else
      admin_homes_top_path
   end 
  end

  def after_sign_out_path_for(resource)
    root_path # ログアウト後
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :kana_last_name, :kana_first_name, :postcode, :address, :phone_number ])
  end
end
