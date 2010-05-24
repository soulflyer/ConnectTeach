# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include Clearance::Authentication
  include ExceptionNotifiable
  
  before_filter :set_locale
  local_addresses.clear # always send email notifications instead of displaying the error
  
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  def set_locale
    I18n.locale = params[:locale]
  end
  
  def default_url_options(options={})
    { :locale => I18n.locale }
    # logger.debug "default_url_options is passed options: #{options.inspect}\n"
    
  end
end
