# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# CADASTRO DE CATEGORIAS
A = Categoria.create(valor: 4927.15)
B = Categoria.create(valor: 3031.87)
C = Categoria.create(valor: 2082.89)
D = Categoria.create(valor: 1389.50)

# CADASTRO DE TAXAS
Taxa.create(tipo: 'Gaveta', valor: 884.44)
Taxa.create(tipo: 'Ossário', valor: 24.50)
Taxa.create(tipo: 'Expediente', valor: 15.50)
Taxa.create(tipo: 'Carta de Concessão', valor: 22.35)

# CADASTRO DE ADMIM
Funcionario.create(RF: '0000000', nome: 'Admin', password: '123456', email: 'admin@admin.com')
# CADASTRO DE FUNCIONÁRIOS
Funcionario.create(RF: '6666666', nome: 'Rodrigo', password: '123456', email: 'rodrigo@cibel.com')
Funcionario.create(RF: '9999999', nome: 'Lucas', password: '123456', email: 'lucas@cibel.com')

#CADASTRO DE MUNICIPE
municipe_joao = Municipe.create(nome: 'João da Silva', RG: '789652146', telefone: '5551-2596', rua: 'Rua Columbus', numero: '25', complemento: '')
municipe_maria = Municipe.create(nome: 'Maria de Oliveira', RG: '879542159', telefone: '5551-9877', rua: 'Rua dos Alfineiros', numero: '09', complemento: '')
municipe_mario = Municipe.create(nome: 'Mario Augusto', RG: '995888854', telefone: '5553-6989', rua: 'Rua das Rosas', numero: '35', complemento: 'apt. 108')

#CADASTRO DE REQUERENTE
requerente_joao = Requerente.create(CPF: '45698778966', dt_nascimento: '07/04/1969', CEP: '04213-001', bairro: 'Ipiranga', cidade: 'São Paulo', 
    nacionalidade: 'Brasileiro', estado: 'SP', estado_civil: 'Casado(a)', profissao: 'Professor Universitário', celular: '98798-8989', email: 'joao.silva@cibel.com', municipe: municipe_joao)
requerente_maria = Requerente.create(CPF: '85236996322', dt_nascimento: '09/08/1964', CEP: '09632-040', bairro: 'Rudge Ramos', cidade: 'São Bernardo do Campo', 
    nacionalidade: 'Brasileiro', estado: 'SP', estado_civil: 'Casado(a)', profissao: 'Funcionário Público Estadual', celular: '96336-5452', email: 'maria.oliveira@cibel.com', municipe: municipe_maria)
requerente_mario = Requerente.create(CPF: '15962362377', dt_nascimento: '25/12/1958', CEP: '03717-004', bairro: 'Cangaíba', cidade: 'São Paulo', 
    nacionalidade: 'Brasileiro', estado: 'SP', estado_civil: 'Viúvo(a)', profissao: 'Taxista', celular: '99989-9669', email: 'mario.augusto@cibel.com', municipe: municipe_mario)

#CADASTRO DE CONCESSIONÁRIO
concessionario_joao = Concessionario.create(requerente: requerente_joao)
concessionario_maria = Concessionario.create(requerente: requerente_maria)

# CADASTRO DE CEMITÉROS (V. Formosa I, V. Formosa II e São Luis, não estão na lista por serem cemitérios jardins e não oferecerem concessões de terrenos)
Cemiterio.create(nome:'Araçá', endereco: 'Av. Dr. Arnaldo, 666', CEP: '01255-000', telefone: '3256-6486', bairro: 'Sumaré', celular: '99815-6201', fax: '3258-3190', prazo_concessao: 'indeterminado', categoria: A)
Cemiterio.create(nome:'Campo Grande', endereco: 'Av: Nossa Senhora do Sabará, S/N', CEP: '04685-003', telefone: '5632-0149', bairro: 'Vila Sofia', celular: '94109-7994', prazo_concessao: 'indeterminado', categoria: B)
Cemiterio.create(nome:'Consolação', endereco: 'R. da Consolação, 1660', CEP: '01302-001', telefone: '3256-5919', bairro: 'Consolação', celular: '94120-7658', prazo_concessao: 'indeterminado', categoria: A)
dom_bosco = Cemiterio.create(nome:'Dom Bosco', endereco: 'Estrada do Pinheirinho, 860', CEP: '05215-000', telefone: '3917-0893', bairro: 'Perus', celular: '99666-9984', prazo_concessao: 'determinado', categoria: D)
Cemiterio.create(nome:'Freguesia do Ó', endereco: 'Av. Itaberaba, 250', CEP: '02734-000', telefone: '3932-1786', bairro: 'Nossa Senhora do Ó', celular: '94110-3491', prazo_concessao: 'indeterminado', categoria: B)
Cemiterio.create(nome:'Itaquera', endereco: 'Rua Serra de São Domingos, 1597', CEP: '08290-370', telefone: '2524-6029', bairro: 'Vila Carmosina', celular: '94121-5042', prazo_concessao: 'indeterminado', categoria: C)
Cemiterio.create(nome:'Lageado', endereco: 'Estrada do Lageado Velho, 1490', CEP: '08452-245', telefone: '2557-8174', bairro: 'Lajeado', celular: '94445-3352', prazo_concessao: 'indeterminado', categoria: C)
Cemiterio.create(nome:'Lapa', endereco: 'Rua Bergson, 347', CEP: '05301-060', telefone: '3834-7936', bairro: 'Parque da Lapa', celular: '94133-8785', prazo_concessao: 'indeterminado', categoria: A)
Cemiterio.create(nome:'Parelheiros', endereco: 'Rua Amaro de Pontes, 237', CEP: '04890-360', telefone: '5920-8275', bairro: 'Parelheiros', celular: '99992-4163', prazo_concessao: 'indeterminado', categoria: C)
Cemiterio.create(nome:'Penha', endereco: 'Av. Amador Bueno da Veiga, 333', CEP: '03635-000', telefone: '2647-2947', bairro: 'Penha de França', celular: '97447-1165', prazo_concessao: 'indeterminado', categoria: B)
Cemiterio.create(nome:'Quarta Parada', endereco: 'Av. Salim Farah Maluf,s/n', CEP: '03304-090', telefone: '2601-9697', bairro: 'Quarta Parada', celular: '99979-4775', prazo_concessao: 'indeterminado', categoria: A)
Cemiterio.create(nome:'Santana', endereco: 'Rua Nova dos Portugueses, 141', CEP: '02462-080', telefone: '2256-5570', bairro: 'Chora Menino', celular: '99726-6279', prazo_concessao: 'indeterminado', categoria: B)
Cemiterio.create(nome:'Santo Amaro', endereco: 'Rua Ministro Roberto Cardoso Alves, 186', CEP: '04737-000', telefone: '5687-6074', bairro: 'Santo Amaro', celular: '95656-5780', prazo_concessao: 'indeterminado', categoria: B)
Cemiterio.create(nome:'São Paulo', endereco: 'Rua Cardeal Arcoverde, 1217-A', CEP: '05407-001', telefone: '3032-5986', bairro: 'Pinheiros', celular: '94474-8971', prazo_concessao: 'indeterminado', categoria: A)
Cemiterio.create(nome:'São Pedro', endereco: 'Av. Francisco Falconi, 837', CEP: '03227-000', telefone: '2341-9774', bairro: 'Jardim Avelino', celular: '97115-0682', prazo_concessao: 'determinado', categoria: B)
Cemiterio.create(nome:'Saudade', endereco: 'Rua Samuel de Carvalho, 6', CEP: '08041-020', telefone: '2054-0715', bairro: 'Jardim São Sebastião', celular: '95027-0566', prazo_concessao: 'indeterminado', categoria: C)
Cemiterio.create(nome:'Tremembé', endereco: 'Av. Maria Amalia L. de Azevedo, 2930', CEP: '02350-003', telefone: '2203-8258', bairro: 'Vila Albertina', celular: '97455-8507', prazo_concessao: 'indeterminado', categoria: B)
Cemiterio.create(nome:'Vila Mariana', endereco: 'Av. Lacerda Franco, 2012', CEP: '01536-001', telefone: '5573-3017', bairro: 'Cambuci', celular: '99587-0567', prazo_concessao: 'indeterminado', categoria: A)
Cemiterio.create(nome:'Vila Nova Cachoeirinha', endereco: 'Rua João Marcelino Branco, s/n', CEP: '02610-000', telefone: '3859-5483', bairro: 'Vila dos Andrades', celular: '99993-9685', fax: '', prazo_concessao: 'determinado', categoria: D)


#CADASTRO DE LOTES
lote1 = Lote.create(quadra:'2', terreno: '147', gleba: '1', largura: 1.60, comprimento: 2.30, tipo_construcao: 'Carneiro', estado: 'livre', cemiterio: dom_bosco)
lote2 = Lote.create(quadra:'2', terreno: '732', gleba: '1', largura: 1.60, comprimento: 2.30, tipo_construcao: 'Carneiro', estado: 'concedido', concessionario: concessionario_joao, cemiterio: dom_bosco)
lote3 = Lote.create(quadra:'3', terreno: '19', gleba: '1', rua: '7', largura: 1.60, comprimento: 2.30, tipo_construcao: 'Carneiro', estado: 'concedido', concessionario: concessionario_maria, cemiterio: dom_bosco)
lote4 = Lote.create(quadra:'8', terreno: '195', gleba: '1', largura: 1.60, comprimento: 2.30, tipo_construcao: 'Capela', estado: 'livre', cemiterio: dom_bosco)


#CADASTRO DE PROCESSO GERAL
ProcessoGeral.create(numero: '2015-0.258.369-2', tipo: 'comisso', observacoes: '', livro: '6', folha: '181', resolucao: '', lote: lote1)
ProcessoGeral.create(numero: '2015-0.258.369-2', tipo: 'comisso', observacoes: '', livro: '6', folha: '181', resolucao: '', lote: lote1)