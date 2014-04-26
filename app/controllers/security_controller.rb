class SecurityController < ApplicationController
  def login
    if is_auth?(params[:username], params[:password])
      redirect_to controller: 'welcome', action: 'index'
    else
      redirect_to controller: 'security', action: 'index', error: '1'
    end
  end
  
  def is_auth?(username, password)
    if Administrator.where(username: username, password: password).exists?
      admin = Administrator.where(username: username, password: password).last
      session[:id] = admin.person.id
      return true
    else
      return false
    end
  end

  def logout
    if request.post? and params[:security] == '1' and is_loged? == true
      redirect_to controller: 'security', action: 'index'
    else
      redirect_to controller: 'welcome', action: 'index'          
    end
  end

  def index
    if request.get? and params[:error] == '1'
      @error = 'Usuario o contraseña incorrectos.'
    end
  end
end
