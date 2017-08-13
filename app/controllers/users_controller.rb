class UsersController < ApplicationController
  before_action :check_users, only: [:new, :create, :show, :update_password, :destroy]
  
  def new
    if !logged_in?
      @user = User.new
    else
      redirect_to home_path
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:id] = @user.id
      log_in @user
      flash[:notice] = "Cadastrado realizado com sucesso, seja bem vindo ao Epresta"
      redirect_to home_path
    else
      flash[:error] = "Usuário não pode ser cadastrado, siga as instruções abaixo"
      render :new
    end

  end

  def show
    @user = current_user
    if @user == nil 
      redirect_to home_path
    end
  end

  def update_password
    @user = User.find(params[:id])
    if @user.authenticate(params[:user][:password_older])
      if @user.update_attributes(password_params)
        flash[:notice] = "Senha atualizada com sucesso"
      else
        flash[:error] = "As senhas não conferem, tente novamente"
      end
    else
      flash[:error] = "Senha inválida, por favor digite sua senha atual"
    end
      render :show
  end

  def destroy
    user = User.find(params[:id])
    name_user = user.name
    user.destroy
    session[:user_id] = nil
    redirect_to home_path
    flash[:notice] = "O usuário #{name_user} foi deletado com sucesso"
  end

  private

  def check_users
    if User.count > 1
      redirect_to home_path
    end
  end

  def user_params
    params.require(:user).permit(:name, :login, :email, 
      :email_confirmation, :password, :password_confirmation)
  end

  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end

end
