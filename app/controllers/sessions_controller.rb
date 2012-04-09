class SessionsController < ApplicationController
  skip_before_filter :authorize
  def new
  end

  def create
  	user = User.find_by_email(params[:email])
  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id
  		redirect_to admin_url
  	else
  		redirect_to login_url, alert: "Combinacion de correo/clave invalido"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to store_url, notice: "Se ha deslogeado"
  end
end
