class HomeController < ApplicationController
  
  def funcAtual
    @nome_func_log = current_funcionario.nome
  end
end
