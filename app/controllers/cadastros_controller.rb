class CadastrosController < ApplicationController
  
  def concessao
  end

  def renovacao
    @lote = Lote.new
  end
  
  def renovacao_form
  end
  
  def ajax_renovacao_lote
    params[:cemiterio_id] = nil if params[:cemiterio_id].blank?
    params[:quadra] = '%' if params[:quadra].blank?
    params[:terreno] = '%' if params[:terreno].blank?
    params[:gleba] = '%' if params[:gleba].blank?
    params[:rua] =  '%' if params[:rua].blank?
    params[:avenida] =  '%' if params[:avenida].blank?
    @lotes = Lote.where("cemiterio_id LIKE ? AND quadra LIKE ? AND terreno LIKE ? AND gleba LIKE ? AND rua LIKE ? AND avenida LIKE ?", 
                        params[:cemiterio_id], params[:quadra], params[:terreno], params[:gleba], params[:rua], params[:avenida] 
                       )
    respond_to do |format|
      format.js { render :file => "/cadastros/partials/renovacao/ajax_renovacao_lote.js" }
    end
  end
end
