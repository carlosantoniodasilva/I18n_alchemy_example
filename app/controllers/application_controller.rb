class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale

  private

  def set_locale
    if locale = params[:locale] || session[:locale]
      I18n.locale = session[:locale] = locale
    end
  end
end
