module SessionsHelper

  private

    # return the current user logged in
    def current_user
      if User.count > 0
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
      end
    end

    # Returns true if user is logged in, else return false
    def logged_in?
      !current_user.nil?
    end

    # Log in the given user
    def log_in(user)
      session[:user_id] = user.id
    end
    
end
