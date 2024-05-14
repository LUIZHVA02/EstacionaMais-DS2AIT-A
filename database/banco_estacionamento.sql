create database estaciona_mais;

use estaciona_mais;

create table tbl_usuario(

id int auto_increment primary key,
nome varchar(100) not null,
email varchar(100) not null,
telefone bigint not null,
endereco varchar(300) not null,
cpf_cnpj bigint not null
);

create table tbl_veiculo(

id int auto_increment primary key,
modelo varchar(50) not null,
placa varchar(8) not null,
marca varchar(30) not null,
cor varchar(30) not null,
informacao varchar(300) not null
);

create table tbl_reserva(

id int auto_increment primary key,
nome varchar(100) not null,
email varchar(100) not null,
telefone bigint not null,
tipo_vaga varchar (25) not null,
dataEntrada date not null,
dataSaida date not null,
horarioEntrada datetime not null,
horarioSaida datetime not null
);

create table tbl_administrador(

id int auto_increment primary key,
nome varchar(100) not null,
email varchar(100) not null,
telefone bigint not null,
endereco varchar(300) not null,
cpf_cnpj bigint not null
);

create table tbl_fncionario(

id int auto_increment primary key,
nome varchar(100) not null,
email varchar(100) not null,
telefone bigint not null,
endereco varchar(300) not null,
cpf_cnpj bigint not null
);

create table tbl_pagamento(

id int auto_increment primary key,
forma_pagamento varchar(30) not null,
numero_cartao numeric not null,
cvv bigint not null,
data_validade date not null,
status_pagamento varchar(50) not null
);

create table tbl_pagamento_reserva(

id int auto_increment primary key,
id_pagamento int,
id_reserva int,

foreign key (id_pagamento) references tbl_pagamento (id),
foreign key (id_reserva) references tbl_reserva (id)
);                                               


