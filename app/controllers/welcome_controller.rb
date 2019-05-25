class WelcomeController < ApplicationController

  def index
    cookies.each do |key, val|
      logger.debug "#{key}:\n#{val}"
    end
  end

end
