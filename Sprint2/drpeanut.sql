create table fornecedor(
id_fornecedor int primary key auto_increment,
nome_fornecedor varchar(100) not null,
cnpj int(14) not null,
endereco varchar(200) not null,
telefone int(14)
email varchar(100) not null,

);
