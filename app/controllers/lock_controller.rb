class LockController < ApplicationController
	include ApplicationHelper
  
  def lockscreen
    session[:lock] = true
  end
  
  def unlock
    if current_funcionario.authenticate(params[:senha])
      session.delete(:lock)
      redirect_to root_url
    else
      redirect_to lockscreen_path
    end
  end
end
