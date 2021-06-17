create database clinica
use clinica

create table Medico (
cod_medico int primary key identity (1,1),
nome varchar (30) not null,
data_de_nascimento date not null,
telefone varchar(11),
cpf varchar(11) not null,
espec_med varchar (30) not null,
email varchar(50)
);

create table clinicaMed (
cod_clinica  int primary key identity(1,1),
nome_clinica varchar(30) not null,
endereco varchar (30), 
telefone varchar (11) not null ,
email varchar (30),
FOREIGN KEY (cod_medico) REFERENCES  Medico (cod_medico),
);

create table Paciente (
cod_Paciente int primary key identity(1,1) ,
nome varchar(50) not null,
nascimento date,
telefone varchar(11), 
email varchar(30),
)

create table Prontuario (
id_Prontuario int primary key identity(1,1),
cod_Paciente int null,
nome varchar(50) not null,
historico varchar(100),
foreign key (cod_Paciente) references  Paciente (cod_Paciente)
)

create table Consulta(
cod_Consulta int primary key identity (1,1),
data_con date not null,
horario time not null,
cod_Paciente int not null,
cod_Medico int not null,
id_Prontuario int not null,

foreign key (id_Prontuario) references Prontuario (id_Prontuario),
foreign key (cod_Paciente) references Paciente (cod_Paciente),
foreign key (cod_Medico) references medico (cod_Medico)
)