class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def is_loged?
    if session[:id] != nil
      return true
    else
      return false
    end
  end
  
  def current_person
    Person.find(session[:id])
  end
  
  def current_admin
    current_person.admin
  end
    
end
