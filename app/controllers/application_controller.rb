# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.
require 'gapps_openid'

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  before_filter :check_openid

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  protected
  def check_openid
    unless session[:authenticated]
      open_id_authentication("https://www.google.com/accounts/o8/site-xrds?hd=crowdint.com")
    end
  end
  
  def open_id_authentication(openid_url)
    authenticate_with_open_id(openid_url, :required => [:nickname, :email]) do |result, identity_url, registration|
      if result.successful?
        session[:authenticated] = true
        redirect_to :success
      else
        redirect_to :fail_success
      end
    end
  end
end
