class CadastrosController < ApplicationController
  
  def concessao
  end

  def renovacao
  end
  
  def renovacao_form
  end
  
  def ajax_lote
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
      format.js { render :file => "/cadastros/partials/ajax_lote.js" }
    end
  end
  
  def novo_lote_modal
    Lote.create(cemiterio_id: params[:cemiterio_id], quadra: params[:quadra], 
                terreno: params[:terreno], gleba: params[:gleba], rua: params[:rua], 
                avenida: params[:avenida], largura: params[:largura], comprimento: params[:comprimento],
                tipo_construcao: params[:tipo_construcao], qtd_gaveta: params[:qtd_gaveta], qtd_ossario: params[:qtd_ossario])
    respond_to do |format|
      format.js { render :file => "/cadastros/partials/novo_lote_modal.js" }
    end
  end
  
  def ajax_pagamento
    @cemiterio = Cemiterio.find(params[:cemiterio_id])
    @qtd_gaveta = params[:qtd_gaveta]
    @qtd_ossario = params[:qtd_ossario]
    respond_to do |format|
      format.js { render :file => "/cadastros/partials/ajax_pagamento.js" }
    end
  end
end
