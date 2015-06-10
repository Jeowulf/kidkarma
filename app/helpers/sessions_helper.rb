module SessionsHelper
  def sign_in(kid)
    # save a cookie on their computer
    remember_token = Kid.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    # update our database with their cookie info
    kid.update_attribute(:remember_token, Kid.digest(remember_token))
    # set a current_kid variable equal to kid
    self.current_kid = kid
  end


  def signed_in?
    !current_kid.nil?
  end

  def current_kid=(kid)
    @current_kid = kid
  end

  def current_kid
    remember_token  = Kid.digest(cookies[:remember_token])
    @current_kid ||= Kid.find_by(remember_token: remember_token)
  end

  def current_kid?(kid)
    kid == current_kid
  end

  def signed_in_kid
    unless signed_in?
      store_location
      redirect_to signin_url, notice: "Please sign in."
    end
  end

  def sign_out
    current_kid.update_attribute(:remember_token,
                                  Kid.digest(Kid.new_remember_token))
    cookies.delete(:remember_token)
    self.current_kid = nil
  end

  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    session.delete(:return_to)
  end

  def store_location
    session[:return_to] = request.url if request.get?
  end
end
