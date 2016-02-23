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
    
    @cemiterio = Cemiterio.find_by(id: params[:cemiterio_id])
    @qtd_gaveta = params[:qtd_gaveta]
    @qtd_ossario = params[:qtd_ossario]
    @largura = params[:largura]
    @comprimento = params[:comprimento]
    @metros_quadrados = BigDecimal(@largura) * BigDecimal(@comprimento)
    @metros_quadrados_string = @metros_quadrados.to_s
    @valor_categoria = @cemiterio.categoria.valor
    @quantidade_gaveta = BigDecimal(params[:qtd_gaveta])
    @taxa_gaveta = Taxa.find_by(tipo: "Gaveta").valor
    @quantidade_ossario = BigDecimal(params[:qtd_ossario])
    @taxa_ossario = Taxa.find_by(tipo: "Ossário").valor
    
    # resultados:
    @valor_lote = (@valor_categoria * @metros_quadrados).to_s
    @valor_gaveta = (@taxa_gaveta * @quantidade_gaveta).to_s
    @valor_gaveta = "R$00.00" if @quantidade_gaveta == 0
    @valor_ossario = (@taxa_ossario * @quantidade_ossario).to_s
    @valor_ossarioa = "R$00.00" if @quantidade_ossario == 0
    @taxa_expediente = Taxa.find_by(tipo: "Expediente").valor.to_s
    @taxa_carta = Taxa.find_by(tipo: "Carta de Concessão").valor.to_s
    # resultados //
    
    respond_to do |format|
      format.js { render :file => "/cadastros/partials/ajax_pagamento.js" }
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
