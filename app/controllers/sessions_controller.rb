class SessionsController < ApplicationController
  
  def new
    if logged_in?

    end
  end

  def create
    user = find_user

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to home_path 
      flash[:notice] = 'Login realizado com sucesso!'
    else
      flash[:error] = 'Usuário e/ou senha inválidos!'
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'Logout efetuado com sucesso!'
    redirect_to home_path
  end


  private

    def find_user
      User.find_by(login: params[:login]) || User.find_by(email: params[:login])
    end
end
