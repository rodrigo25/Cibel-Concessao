class Processo < ActiveRecord::Base
  belongs_to :municipe
  belongs_to :requerente
  belongs_to :concessionario
  belongs_to :processo_geral
end
