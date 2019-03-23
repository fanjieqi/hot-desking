class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  before_action only: [:new] do
    @form_method = "post"
  end
  before_action only: [:edit, :update] do
    @form_method = "patch"
  end

  before_action do
    session[:locale] = params[:lang] if params[:lang]
    I18n.locale = session[:locale]

    add_breadcrumb I18n.t("path.home", default: "Home"), :root_path
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
