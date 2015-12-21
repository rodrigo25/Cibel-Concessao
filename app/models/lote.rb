class Lote < ActiveRecord::Base
  belongs_to :concessionario
  belongs_to :cemiterio
end
