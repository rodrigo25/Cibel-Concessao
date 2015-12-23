# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
ActiveSupport::Inflector.inflections do |inflect|
   inflect.irregular 'categoria', 'categorias'
   inflect.irregular 'processo_geral', 'processos_gerais'
   inflect.irregular 'taxa_protocolo', 'taxas_protocolo'
   inflect.irregular 'concessionario', 'concessionarios'
   inflect.irregular 'funcionario', 'funcionarios'
   inflect.irregular 'lote', 'lotes'
   inflect.irregular 'municipe', 'municipes'
   inflect.irregular 'cemiterio', 'cemiterios'
   inflect.irregular 'processo', 'processos'
   inflect.irregular 'permuta', 'permutas'
   inflect.irregular 'parcela', 'parcelas'
   inflect.irregular 'processo_exclusao_comisso', 'processos_exclusao_comisso'
   inflect.irregular 'requerente', 'requerentes'
   inflect.irregular 'processo_geral_lote', 'processos_gerais_lotes'
 end
