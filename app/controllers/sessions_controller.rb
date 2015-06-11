class SessionsController < ApplicationController
  def new
  end

  def create
    kid = Kid.find_by(email: params[:session][:email].downcase)
    if kid && kid.authenticate(params[:session][:password])
      sign_in kid
      redirect_back_or scoops_path
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end

