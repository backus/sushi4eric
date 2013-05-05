class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :initialize_variables

  private
    def initialize_variables
      @twilio = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']
    end
end
