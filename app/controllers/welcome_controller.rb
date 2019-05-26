class WelcomeController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    logger.debug "\n\ncookies --------------------"
    cookies.each do |key, val|
      logger.debug "#{key}:\n#{val}"
    end

    logger.debug "\n\nheaders --------------------"
    request.headers.each do |key, val|
      logger.debug "#{key}:\n#{val}"
    end

    logger.debug "\n\nparams --------------------"
    params.each do |key, val|
      logger.debug "#{key}:\n#{val}"
    end
  end

end
