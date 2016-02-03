module ApplicationHelper
  
  def sem_layout
    if params[:controller] == 'sessions' || params[:controller] == 'lock'
      return true
    else
      return false
    end
  end

  def log_in(funcionario)
    session[:funcionario_id] = funcionario.id
  end

  def current_funcionario
    if session[:funcionario_id]
      # if Atendente.where(id: session[:funcionario_id]).take
      #   @current_funcionario = Atendente.find(session[:funcionario_id])
      # else
      #   @current_funcionario = Velorista.find(session[:funcionario_id])
      # end
      @current_funcionario = Funcionario.find(session[:funcionario_id])
    end
  end

  def logged_in?
    !current_funcionario.nil?
  end

  def log_out
    session.delete(:funcionario_id)
    @current_funcionario = nil
  end
end
