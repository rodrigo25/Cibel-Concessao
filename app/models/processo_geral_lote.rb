class ProcessoGeralLote < ActiveRecord::Base
  belongs_to :lote
  belongs_to :processo_geral
end
