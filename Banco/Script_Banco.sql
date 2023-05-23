create database ModernFamilyIntersperse;
use ModernFamilyIntersperse;

create table usuario (
idUsuario int primary key auto_increment,
nomeUsuario varchar(45),
emailUsuario varchar(45),
fkPersonagem int
);

create table Personagem (
idPersonagem int primary key auto_increment,
nomePersonagem varchar(45)
);

alter table usuario add foreign key (fkPersonagem) references personagem(idPersonagem);

insert into personagem values 
(null, 'Phill Dunphy'),
(null, 'Clair Dunphy'),
(null, 'Haley Dunphy'),
(null, 'Alex Dunphy'),
(null, 'Luke Dunphy'),
(null, 'Mitchell Pritchett'),
(null, 'Cameron Tucker'),
(null, 'Lily Tucker Pritchett'),
(null, 'Jay Pritchett'),
(null, 'Gloria Pritchett'),
(null, 'Manny Delgado'),
(null, 'Joe Pritchett'),
(null, 'Stella Pritchett');

create table sugestoes (
idSugestao int primary key auto_increment,
descricao varchar (300),
fkUsuario int,
foreign key (fkUsuario) references usuario (idUsuario)
);