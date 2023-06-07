create database exemplo_transaction;
use exemplo_transaction;

create table Produto (
idProduto int primary key auto_increment,
nomeProduto varchar(45),
preco decimal(6,2)
);

insert into produto values 
(null, 'Mouse s/ Fio', 50),
(null, 'Pendrive 1tb', 80),
(null, 'Fone de ouvido S/Fio', 150);

select * from produto; 

start transaction;
delete from produto where idProduto = 2;
select*from produto;
update produto set preco = 80 where idProduto = 1;
rollback;