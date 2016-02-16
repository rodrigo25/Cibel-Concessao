class CadastrosController < ApplicationController
  
  def concessao
  end

  def renovacao
    @lote = Lote.new
  end
  
  def renovacao_form
  end
  
  def ajax_renovacao_lote
    respond_to do |format|
      format.js { render :file => "/cadastros/partials/renovacao/ajax_renovacao_lote.js" }
    end
  end
end
