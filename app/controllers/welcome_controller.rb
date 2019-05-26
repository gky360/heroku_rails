class WelcomeController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    cookies.each do |key, val|
      logger.debug "#{key}:\n#{val}"
    end
  end

end
