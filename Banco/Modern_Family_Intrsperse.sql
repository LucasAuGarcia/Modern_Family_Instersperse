create database ModernFamilyIntersperse;
use ModernFamilyIntersperse;

create table usuario (
idUsuario int primary key auto_increment,
nomeUsuario varchar(45),
emailUsuario varchar(45) unique,
senhaUsuario varchar(45),
idadeUsuario int,
fkPersonagem int,
foreign key(fkPersonagem) references personagem (idPersonagem)
);

create table Personagem (
idPersonagem int primary key auto_increment,
nomePersonagem varchar(45)
);
 
create table likes (
fkUsuario int,
fkPersonagem int,
foreign key (fkUsuario) references usuario(idUsuario),
foreign key (fkPersonagem) references personagem(idPersonagem),
primary key (fkUsuario, fkPersonagem)
);

create table sugestoes (
fkUsuario int,
sugestao varchar(300),
dataHora datetime,
lida char (3),
check (lida in ('Sim', 'Não')),
primary key (fkUsuario, dataHora)
);

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
