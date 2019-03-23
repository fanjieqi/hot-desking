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
  end
end
