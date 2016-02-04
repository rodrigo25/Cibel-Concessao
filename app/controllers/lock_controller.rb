class LockController < ApplicationController
	include ApplicationHelper
  
  def lockscreen
    session[:request_url] = params[:request_url] if params[:request_url]
    session[:lock] = true
  end
  
  def unlock
    if current_funcionario.authenticate(params[:senha])
      session.delete(:lock)
      @url = session[:request_url]
      session.delete(:request_url)
      redirect_to @url || root_url
    else
      redirect_to lockscreen_path
    end
  end
end
