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

insert into tbl_usuario(
nome,
email,
telefone,
endereco,
cpf_cnpj
) values (
"Vitor Hugo",
"vitorHugolindojob@gmail.com",
"1140028922",
"AV.rosas vermelhas, 1020",
"12462946109"
);

create table tbl_veiculo(

id int auto_increment primary key,
modelo varchar(50) not null,
ano int (5) not null,
placa varchar(8) not null,
marca varchar(30) not null,
cor varchar(30) not null,
informacao varchar(300) not null
);

insert into tbl_veiculo(
modelo,
ano,
placa,
marca,
cor,
informacao) values (
"Civic",
"2010",
"BC1J000",
"Honda",
"Cinza",
"Amassado na lateral direita na frente do veiculo"
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

insert into tbl_reserva(
nome,
email, 
telefone, 
tipo_vaga,
dataEntrada,
dataSaida,
horarioEntrada,
horarioSaida
)values(
"Vitor Hugo",
"vitorHugolixo123@gmail.com",
"1140028922",
"Coberta",
"2024-05-14",
"2024-05-15",
"2024-05-14 16:50",
"2024-05-15 9:40"
);

create table tbl_administrador(

id int auto_increment primary key,
nome varchar(100) not null,
email varchar(100) not null,
telefone bigint not null,
endereco varchar(300) not null,
cpf_cnpj bigint not null
);

insert into tbl_administrador(
nome,
email,
telefone,
endereco,
cpf_cnpj
) values (
"Julia Fonseca",
"juliafonsecaLinda@gmail.com",
"1140028922",
"AV.rosas Brancas, 1000",
"87569031832"
);

create table tbl_funcionario(

id int auto_increment primary key,
nome varchar(100) not null,
email varchar(100) not null,
telefone bigint not null,
endereco varchar(300) not null,
cpf_cnpj bigint not null
);

insert into tbl_funcionario(
nome,
email,
telefone,
endereco,
cpf_cnpj
) values (
"Raica Martinez",
"martinezRica@gmail.com",
"1165728933",
"AV.casas amarelas, 1360",
"23167340956"
);

create table tbl_pagamento(

id int auto_increment primary key,
forma_pagamento varchar(30) not null,
numero_cartao bigint(20) not null,
cvv bigint not null,
data_validade date not null,
status_pagamento varchar(50) not null
);


insert into tbl_pagamento(
forma_pagamento,
numero_cartao,
cvv,
data_validade,
status_pagamento)values(
"Debito",
"4539123456789012",
"123",
"2025-05-01",
"Em andamento"
);

create table tbl_pagamento_reserva(

id int auto_increment primary key,
id_pagamento int,
id_reserva int,

foreign key (id_pagamento) references tbl_pagamento (id),
foreign key (id_reserva) references tbl_reserva (id)
);
