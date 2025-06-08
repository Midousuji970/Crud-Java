-- Tabela Estoque_Movimentacao
create TABLE estoque_movimentacao(
id int not null auto_increment primary key,
quantidade int(7) not null,
tipo char(1) not null,
dataMovi TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela de Estoque
create table estoque(
id int not null primary key,
quantidade int(7) not null,
id_last_move int,
foreign key (id_last_move) references estoque_movimentacao(id) on delete cascade on update cascade
);

-- Tabela de Carros
create table carros(
id uuid primary key,
modelo varchar(60) not null,
ano varchar(12) not null,
fabricante varchar(60),
combustivel char(1),
motor char(1) not null,
porta int(1) not null,
passageiros char(1),
valor decimal(10,2),
estoque_id int,
foreign key (estoque_id) references estoque(id) on delete cascade on update cascade
);
create index fabricantes on carros(fabricante);

-- Tabela Forma de Pagamento
create table forma_pag(
id int not null primary key,
nome varchar(16) not null
);

-- Tabela de Usuario
create table usuario(
id uuid not null primary key,
nome varchar(30) not null,
email varchar(30) not null,
senha varchar(60) not null,
dataCriacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela de Transacao
create table transacao(
id int not null primary key,
id_forma_pag int not null,
quantidade int(7) not null,
valor_pagamennto decimal(10,2) not null,
id_carro uuid not null,
id_estoque_movimentacao int not null,
id_user uuid not null,
estado char(1) not null,
data_pagamento TIMESTAMP DEFAULT current_timestamp,
foreign key (id_carro) references carros(id),
foreign key (id_estoque_movimentacao) references estoque_movimentacao(id),
foreign key (id_user) references usuario(id),
foreign key (id_forma_pag) references forma_pag(id)
);
create index forma_pagamentos on transacao(id_forma_pag);
