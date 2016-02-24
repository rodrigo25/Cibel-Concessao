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
    @valor_categoria = @cemiterio.categoria.valor
    @valor_lote = @valor_categoria * @metros_quadrados
    @quantidade_gaveta = BigDecimal(params[:qtd_gaveta])
    @taxa_gaveta = Taxa.find_by(tipo: "Gaveta").valor
    @valor_gaveta = @taxa_gaveta * @quantidade_gaveta
    @quantidade_ossario = BigDecimal(params[:qtd_ossario])
    @taxa_ossario = Taxa.find_by(tipo: "Ossário").valor
    @valor_ossario = @taxa_ossario * @quantidade_ossario
    
    
    # resultados:
    @total_sem_taxas = ActionController::Base.helpers.number_with_precision(@valor_lote + @valor_gaveta + @valor_ossario, :precision => 2)
    @largura = ActionController::Base.helpers.number_with_precision(@largura, :precision => 1)
    @comprimento = ActionController::Base.helpers.number_with_precision(@comprimento, :precision => 1)
    @valor_lote = ActionController::Base.helpers.number_to_currency(@valor_categoria * @metros_quadrados)
    @metros_quadrados = ActionController::Base.helpers.number_with_precision(@metros_quadrados, :precision => 1)
    @valor_gaveta = ActionController::Base.helpers.number_to_currency(@taxa_gaveta * @quantidade_gaveta)
    @valor_gaveta = "R$ 00,00" if @quantidade_gaveta == 0
    @valor_ossario = ActionController::Base.helpers.number_to_currency(@taxa_ossario * @quantidade_ossario)
    @valor_ossario = "R$ 00,00" if @quantidade_ossario == 0
    @taxa_expediente = ActionController::Base.helpers.number_to_currency(Taxa.find_by(tipo: "Expediente").valor)
    @taxa_carta = ActionController::Base.helpers.number_to_currency(Taxa.find_by(tipo: "Carta de Concessão").valor)
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
