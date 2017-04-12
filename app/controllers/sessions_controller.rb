class SessionsController < ApplicationController
  def new
  end

  def create
    if !!params[:name] && !params[:name].empty?
      session[:name] = params.require(:name)
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end
end
