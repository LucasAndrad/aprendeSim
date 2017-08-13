class ManagementsController < ApplicationController
  before_action :check_log_in
  
  def index
  end

  private
    def check_log_in
      if logged_in? == false
        redirect_to home_path
      end
    end
end
