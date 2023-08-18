create database senai_03;

use senai_03;

create table produtos 
(
	id_produto integer primary key,
    nome varchar(100),
    preco numeric
);

insert into produtos(id_produto, nome, preco)values
(1,"Iphone 14", 5000),
(2,"Iphone 13", 4500),
(3,"Iphone 12", 3000),
(4,"Iphone 11", 2500),
(5,"Iphone XR", 2000),
(6,"Galayx S20", 1800),
(7,"Galayx S10", 2000),
(8,"LG K10", 4000),
(9,"Xioami Redmi Note10", 2300),
(10,"Nokia Tijolão ", 30 );

create table pedidos
(
 id_pedido integer primary key,
 id_produto integer,
 quantidade integer
 );
 
 insert into pedidos (id_pedido, id_produto, quantidade)values

(1, 1, 300),
(2, 2, 32),
(3, 3, 56),
(4, 4, 22),
(5, 5, 13),
(6, 6, 772),
(7, 7, 678),
(8, 8, 532),
(9, 9, 11),
(10, 10, 12);

select * from produtos;
select * from pedidos;

select p.id_produto, p.nome, p.preco, d.quantidade from produtos as p inner join pedidos as d on
d.id_produto=p.id_produto where id_pedido=4;
