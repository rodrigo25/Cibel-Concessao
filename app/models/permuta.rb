class Permuta < ActiveRecord::Base
  belongs_to :processo
  belongs_to :lote
end
