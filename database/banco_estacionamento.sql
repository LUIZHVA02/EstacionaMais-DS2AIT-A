create database estaciona_mais;

use estaciona_mais;

create table tbl_usuarios(

id int auto_increment primary key,
nome varchar(100) not null,
email varchar(100) not null,
telefone bigint not null,
endereco varchar(300) not null,
cpf bigint not null
);

insert into tbl_usuarios(
nome,
email,
telefone,
endereco,
cpf
) values (
"Vitor Hugo",
"vitorHugolindojob@gmail.com",
"1140028922",
"AV.rosas vermelhas, 1020",
"12462946109"
);

create table tbl_administradores(
id int auto_increment primary key,
nome varchar(100) not null,
email varchar(100) not null,
telefone bigint not null,
endereco varchar(300) not null,
cpf bigint not null
);

insert into tbl_administradores(
nome,
email,
telefone,
endereco,
cpf
) values (
"Raica Martinez",
"martinezRica@gmail.com",
"1165728933",
"AV.casas amarelas, 1360",
"23167340956"
),
(
"Julia Fonseca",
"juliafonsecaLinda@gmail.com",
"1140028922",
"AV.rosas Brancas, 1000",
"87569031832"
);

create table tbl_veiculos(
id int auto_increment primary key,
modelo varchar(50) not null,
ano int (5) not null,
placa varchar(8) not null,
marca varchar(50) not null,
cor varchar(50) not null,
informacao varchar(300) not null
);

insert into tbl_veiculos(
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

create table tbl_reservas(
id int auto_increment primary key,
nome varchar(100) not null,
email varchar(100) not null,
telefone bigint not null,
dataEntrada date not null,
dataSaida date not null,
horarioEntrada time not null,
horarioSaida time not null
);

insert into tbl_reservas(
nome,
email, 
telefone,
dataEntrada,
dataSaida,
horarioEntrada,
horarioSaida
)values(
"Vitor Hugo",
"vitorHugolixo123@gmail.com",
"1140028922",
"2024-05-14",
"2024-05-15",
"16:50:00",
"09:40:00"
);

create table tbl_pagamentos(
id int auto_increment primary key,
forma_pagamento varchar(30) not null
);

insert into tbl_pagamentos(forma_pagamento)values
("Debito"),
("Dinheiro"),
("Crédito"),
("Pix");

create table tbl_vagas(
	id int primary key auto_increment,
    sigla_vaga varchar(10),
    tipo_vaga varchar(100),
    status_vaga varchar(100)
);
insert into tbl_vagas(sigla_vaga, tipo_vaga, status_vaga) values
("01","Comum - Descoberta","Livre"),
("02","Comum - Descoberta","Livre"),
("03","Comum - Descoberta","Livre"),
("04","Comum - Descoberta","Livre"),
("05","Comum - Descoberta","Livre"),
("06","Comum - Descoberta","Livre"),
("07","Comum - Descoberta","Livre"),
("08","Comum - Descoberta","Livre"),
("09","Comum - Descoberta","Livre"),
("10","Comum - Descoberta","Livre"),
("11","Comum - Descoberta","Livre"),
("12","Comum - Descoberta","Livre"),
("13","Comum - Descoberta","Livre"),
("14","Comum - Descoberta","Livre"),
("15","Comum - Descoberta","Livre"),
("16","Comum - Descoberta","Livre"),
("17","Comum - Descoberta","Livre"),
("18","Comum - Descoberta","Livre"),
("19","Comum - Descoberta","Livre"),
("20","Comum - Descoberta","Livre"),
("21","Comum - Descoberta","Livre"),
("22","Comum - Descoberta","Livre"),
("23","Comum - Descoberta","Livre"),
("24","Comum - Descoberta","Livre"),
("25","Comum - Descoberta","Livre"),
("26","Comum - Descoberta","Livre"),
("27","Comum - Descoberta","Livre"),
("28","Comum - Descoberta","Livre"),
("29","Comum - Descoberta","Livre"),
("30","Comum - Descoberta","Livre"),
("31","Comum - Descoberta","Livre"),
("32","Comum - Descoberta","Livre"),
("33","Comum - Descoberta","Livre"),
("34","Comum - Descoberta","Livre"),
("35","Comum - Descoberta","Livre"),
("36","Comum - Descoberta","Livre"),
("37","Comum - Descoberta","Livre"),
("38","Comum - Descoberta","Livre"),
("39","Comum - Descoberta","Livre"),
("40","Comum - Descoberta","Livre"),
("41","Comum - Descoberta","Livre"),
("42","Comum - Descoberta","Livre"),
("43","Comum - Descoberta","Livre"),
("44","Comum - Descoberta","Livre"),
("45","Comum - Descoberta","Livre"),
("46","Comum - Descoberta","Livre"),
("47","Comum - Descoberta","Livre"),
("48","Comum - Descoberta","Livre"),
("49","Comum - Descoberta","Livre"),
("50","Comum - Descoberta","Livre"),
("51","Comum - Coberta","Livre"),
("52","Comum - Coberta","Livre"),
("53","Comum - Coberta","Livre"),
("54","Comum - Coberta","Livre"),
("55","Comum - Coberta","Livre"),
("56","Comum - Coberta","Livre"),
("57","Comum - Coberta","Livre"),
("58","Comum - Coberta","Livre"),
("59","Comum - Coberta","Livre"),
("60","Comum - Coberta","Livre"),
("61","Comum - Coberta","Livre"),
("62","Comum - Coberta","Livre"),
("63","Comum - Coberta","Livre"),
("64","Comum - Coberta","Livre"),
("65","Comum - Coberta","Livre"),
("66","Comum - Coberta","Livre"),
("67","Comum - Coberta","Livre"),
("68","Comum - Coberta","Livre"),
("69","Comum - Coberta","Livre"),
("70","Comum - Coberta","Livre"),
("71","Idosos - Coberta","Livre"),
("72","Idosos - Coberta","Livre"),
("73","Idosos - Coberta","Livre"),
("74","Idosos - Coberta","Livre"),
("75","Idosos - Coberta","Livre"),
("76","Idosos - Coberta","Livre"),
("77","Idosos - Coberta","Livre"),
("78","Idosos - Coberta","Livre"),
("79","Idosos - Coberta","Livre"),
("80","Idosos - Coberta","Livre"),
("81","Deficiente - Coberta","Livre"),
("82","Deficiente - Coberta","Livre"),
("83","Deficiente - Coberta","Livre"),
("84","Deficiente - Coberta","Livre"),
("85","Deficiente - Coberta","Livre"),
("86","Deficiente - Coberta","Livre"),
("87","Deficiente - Coberta","Livre"),
("88","Deficiente - Coberta","Livre"),
("89","Deficiente - Coberta","Livre"),
("90","Deficiente - Coberta","Livre"),
("91A","Motos - Coberta","Livre"),
("91B","Motos - Coberta","Livre"),
("92A","Motos - Coberta","Livre"),
("92B","Motos - Coberta","Livre"),
("93A","Motos - Coberta","Livre"),
("93B","Motos - Coberta","Livre"),
("94A","Motos - Coberta","Livre"),
("94B","Motos - Coberta","Livre"),
("95A","Motos - Coberta","Livre"),
("95B","Motos - Coberta","Livre"),
("96A","Motos - Coberta","Livre"),
("96B","Motos - Coberta","Livre"),
("97A","Motos - Coberta","Livre"),
("97B","Motos - Coberta","Livre"),
("98A","Motos - Coberta","Livre"),
("98B","Motos - Coberta","Livre"),
("99A","Motos - Coberta","Livre"),
("99B","Motos - Coberta","Livre"),
("100A","Motos - Coberta","Livre"),
("100B","Motos - Coberta","Livre");

create table tbl_usuario_veiculos(
	id int primary key auto_increment,
	id_usuario int,
    id_veiculo int,
    
    foreign key (id_usuario) references tbl_usuarios(id),
	foreign key (id_veiculo) references tbl_veiculos (id)
);

create table tbl_reserva_vagas_administrador(
id int auto_increment primary key,
id_vaga int,
id_reserva int,
id_veiculo int,
id_administrador int,

foreign key (id_vaga) references tbl_vagas (id),
foreign key (id_reserva) references tbl_reservas (id),
foreign key (id_veiculo) references tbl_veiculos (id),
foreign key (id_administrador) references tbl_administradores (id)
);

create table tbl_reserva_vagas_usuario(
id int auto_increment primary key,
id_vaga int,
id_reserva int,
id_veiculo int,
id_usuario int,

foreign key (id_vaga) references tbl_vagas (id),
foreign key (id_reserva) references tbl_reservas (id),
foreign key (id_veiculo) references tbl_veiculos (id),
foreign key (id_usuario) references tbl_usuarios(id)
);

create table tbl_pagamento_reserva(
id int auto_increment primary key,
id_pagamento int,
id_reserva int,
id_usuario int,

foreign key (id_pagamento) references tbl_pagamentos (id),
foreign key (id_usuario) references tbl_usuarios(id),
foreign key (id_reserva) references tbl_reservas (id)
);