class ApplicationController < ActionController::Base
  helper_method :current_user

  private

  def current_user
    ip = request.headers['X-Forwarded-For']&.split(',')&.first&.strip || request.remote_ip

    @current_user ||= User.find_or_create_by(ip_address: ip)
  end
end
