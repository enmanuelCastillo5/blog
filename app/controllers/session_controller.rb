class SessionController < ApplicationController
  def new
    
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = 'Has iniciado session correctamente'
      redirect_to articles_path

    else
      flash[:error] = 'Hubo un error al iniciar Session'
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to articles_path, notice: 'session cerrada'
  end
end
