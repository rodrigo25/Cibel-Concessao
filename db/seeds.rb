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
Taxa_Protocolo.create(tipo: 'Gaveta', valor: 884.44)
Taxa_Protocolo.create(tipo: 'Ossário', valor: 24.50)
Taxa_Protocolo.create(tipo: 'Expediente', valor: 15.50)
Taxa_Protocolo.create(tipo: 'Carta de Concessão', valor: 22.35)

# CADASTRO DE ADMIM
Funcionario.create(RF: '0000000', nome: 'Admin', senha: '123456', email: 'admin@admin.com')


Cemiterio.create(nome:'Araçá', endereco: 'Av. Dr. Arnaldo, 666', CEP: '01255-000', telefone: '3256-6486', bairro: 'Sé', celular: '99815-6201', fax: '3258-3190', prazo_concessao: 'indeterminado', categoria: A)
Cemiterio.create(nome:'Campo Grande', endereco: 'Av: Nossa Senhora do Sabará, S/N', CEP: '04685-003', telefone: '5632-0149', bairro: 'Vila Sofia', celular: '94109-7994', prazo_concessao: 'indeterminado', categoria: B)
Cemiterio.create(nome:'Consolação', endereco: 'R. da Consolação, 1660', CEP: '01302-001', telefone: '3256-5919', bairro: 'Sé', celular: '94120-7658', prazo_concessao: 'indeterminado', categoria: A)
Cemiterio.create(nome:'Dom Bosco', endereco: 'Estrada do Pinheirinho', CEP: '05215-000', telefone: '3917-0893', bairro: 'Perus', celular: '99666-9984', prazo_concessao: 'determinado', categoria: D)
Cemiterio.create(nome:'Freguesia do Ó', endereco: 'Av. Itaberaba, 250', CEP: '02734-000', telefone: '3932-1786', bairro: 'Freguesia do Ó', celular: '94110-3491', prazo_concessao: 'indeterminado', categoria: B)
Cemiterio.create(nome:'Itaquera', endereco: '', CEP: '', telefone: '2524-6029', bairro: 'Itaquera', celular: '94121-5042', prazo_concessao: 'indeterminado', categoria: C)
Cemiterio.create(nome:'Lageado', endereco: '', CEP: '', telefone: '2557-8174', bairro: '', celular: '94445-3352', prazo_concessao: 'indeterminado', categoria: C)
Cemiterio.create(nome:'Lapa', endereco: '', CEP: '', telefone: '3834-7936', bairro: '', celular: '94133-8785', prazo_concessao: 'indeterminado', categoria: A)
Cemiterio.create(nome:'Parelheiros', endereco: '', CEP: '', telefone: '5920-8275', bairro: '', celular: '99992-4163', prazo_concessao: 'indeterminado', categoria: C)
Cemiterio.create(nome:'Penha', endereco: '', CEP: '', telefone: '2647-2947', bairro: '', celular: '97447-1165', prazo_concessao: 'indeterminado', categoria: B)
Cemiterio.create(nome:'Quata Parada', endereco: '', CEP: '', telefone: '2601-9697', bairro: '', celular: '99979-4775', prazo_concessao: 'indeterminado', categoria: A)
Cemiterio.create(nome:'Santana', endereco: '', CEP: '', telefone: '2256-5570', bairro: '', celular: '99726-6279', prazo_concessao: 'indeterminado', categoria: B)
Cemiterio.create(nome:'Santo Amaro', endereco: '', CEP: '', telefone: '5687-6074', bairro: '', celular: '95656-5780', prazo_concessao: 'indeterminado', categoria: B)
Cemiterio.create(nome:'São Paulo', endereco: '', CEP: '', telefone: '3032-5986', bairro: '', celular: '94474-8971', prazo_concessao: 'indeterminado', categoria: A)
Cemiterio.create(nome:'São Pedro', endereco: '', CEP: '', telefone: '2341-9774', bairro: '', celular: '97115-0682', prazo_concessao: 'determinado', categoria: B)
Cemiterio.create(nome:'Saudade', endereco: '', CEP: '', telefone: '2054-0715', bairro: '', celular: '95027-0566', prazo_concessao: 'indeterminado', categoria: C)
Cemiterio.create(nome:'Tremembré', endereco: '', CEP: '', telefone: '2203-8258', bairro: '', celular: '97455-8507', prazo_concessao: 'indeterminado', categoria: B)
Cemiterio.create(nome:'Vila Mariana', endereco: '', CEP: '', telefone: '5573-3017', bairro: '', celular: '99587-0567', prazo_concessao: 'indeterminado', categoria: A)
Cemiterio.create(nome:'Vila Nova Cachoeirinha', endereco: '', CEP: '', telefone: '3859-5483', bairro: '', celular: '99993-9685', fax: '', prazo_concessao: 'determinado', categoria: D)

Funcionario.create(RF:'x488879' ,nome:'Rodrigo', password: '123456', email:'rodrigo@gmail.com')