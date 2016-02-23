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
  
  def novo_lote_modal
    Lote.create(cemiterio_id: params[:cemiterio_id], quadra: params[:quadra], 
                terreno: params[:terreno], gleba: params[:gleba], rua: params[:rua], 
                avenida: params[:avenida], largura: params[:largura], comprimento: params[:comprimento],
                tipo_construcao: params[:tipo_construcao], qtd_gaveta: params[:qtd_gaveta], qtd_ossario: params[:qtd_ossario])
    respond_to do |format|
      format.js { render :file => "/cadastros/partials/renovacao/novo_lote_modal.js" }
    end
  end
  
  
  def ajax_buscar_requerente_cpf
    @requerente = Requerente.find_by(cpf: params[:requerente_CPF])
    if @requerente 
      @municipe = Municipe.find(@requerente.municipe_id)
      respond_to do |format|
        format.js { render :file => "/cadastros/partials/renovacao/ajax_buscar_requerente_cpf.js" }
      end
    else
      # exibir mensagem que não achou
    end
  end
  
  
end
