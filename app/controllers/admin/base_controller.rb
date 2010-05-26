class Admin::BaseController < ApplicationController
  before_filter :authenticate

  protected
  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == Settings.admin_user && password == Settings.admin_password
    end
  end
end
