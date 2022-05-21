DROP DATABASE `gamabuster`;

CREATE DATABASE `gamabuster`;

USE `gamabuster`;

CREATE TABLE `cliente` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `data_nascimento` date NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `UK_cpf` (`cpf`)
) ENGINE = InnoDB AUTO_INCREMENT = 7 DEFAULT CHARSET = latin1;

insert into
  `cliente` (
    `codigo`,
    `cpf`,
    `data_nascimento`,
    `email`,
    `nome`,
    `sobrenome`,
    `telefone`
  )
values
  (
    1,
    '11111111111',
    '1989-02-26',
    NULL,
    'Francisross',
    'Soares de Oliveira',
    NULL
  );

insert into
  `cliente` (
    `codigo`,
    `cpf`,
    `data_nascimento`,
    `email`,
    `nome`,
    `sobrenome`,
    `telefone`
  )
values
  (
    4,
    '11111111113',
    '1977-11-25',
    NULL,
    'Bruce',
    'Lee',
    NULL
  );

insert into
  `cliente` (
    `codigo`,
    `cpf`,
    `data_nascimento`,
    `email`,
    `nome`,
    `sobrenome`,
    `telefone`
  )
values
  (
    5,
    '27287264501',
    '1995-04-07',
    'reginaalessandrarocha@advocaciand.adv.br',
    'Regina',
    'Alessandra Rocha',
    '(75) 98563-1383'
  );

insert into
  `cliente` (
    `codigo`,
    `cpf`,
    `data_nascimento`,
    `email`,
    `nome`,
    `sobrenome`,
    `telefone`
  )
values
  (
    6,
    '42264108584',
    '1995-04-07',
    'andreia_ribeiro@statusseguros.com.br',
    'Andreia',
    'Cecília Ribeiro de Araújo',
    '42264108584'
  );

CREATE TABLE `endereco` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `logradouro` varchar(150) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `cep` varchar(8) NOT NULL,
  `cliente_codigo` int(11) NOT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `UK_cliente` (`cliente_codigo`),
  CONSTRAINT `FK_Cliente` FOREIGN KEY (`cliente_codigo`) REFERENCES `cliente` (`codigo`) ON DELETE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 9 DEFAULT CHARSET = latin1;

insert into
  `endereco` (
    `bairro`,
    `cep`,
    `cidade`,
    `cliente_codigo`,
    `codigo`,
    `estado`,
    `logradouro`,
    `numero`
  )
values
  (
    'Jardim Paulista',
    '14050040',
    'Ribeirão Preto',
    1,
    3,
    'SP',
    'Rua qualquer',
    '520'
  );

insert into
  `endereco` (
    `bairro`,
    `cep`,
    `cidade`,
    `cliente_codigo`,
    `codigo`,
    `estado`,
    `logradouro`,
    `numero`
  )
values
  (
    'Pampalona',
    '44031160',
    'Feira de Santana',
    5,
    7,
    'BA',
    'Rua Cedro de São José',
    '357'
  );

insert into
  `endereco` (
    `bairro`,
    `cep`,
    `cidade`,
    `cliente_codigo`,
    `codigo`,
    `estado`,
    `logradouro`,
    `numero`
  )
values
  (
    'Pampalona',
    '44031160',
    'Feira de Santana',
    6,
    8,
    'BA',
    'Rua Cedro de São José',
    '357'
  );

CREATE TABLE `filme` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `ano_lancamento` varchar(4) NOT NULL,
  `duracao` int(11) NOT NULL,
  `estoque` int(11) DEFAULT '0',
  PRIMARY KEY (`codigo`)
) ENGINE = InnoDB AUTO_INCREMENT = 8 DEFAULT CHARSET = latin1;

insert into
  `filme` (
    `ano_lancamento`,
    `codigo`,
    `duracao`,
    `estoque`,
    `nome`
  )
values
  ('1999', 1, 90, 3, 'Matrix');

insert into
  `filme` (
    `ano_lancamento`,
    `codigo`,
    `duracao`,
    `estoque`,
    `nome`
  )
values
  ('1999', 2, 120, 2, 'Asterix e Obelix');

insert into
  `filme` (
    `ano_lancamento`,
    `codigo`,
    `duracao`,
    `estoque`,
    `nome`
  )
values
  ('1997', 3, 164, 6, 'Titanic');

insert into
  `filme` (
    `ano_lancamento`,
    `codigo`,
    `duracao`,
    `estoque`,
    `nome`
  )
values
  ('2010', 4, 90, 3, 'Bob Espoja');

insert into
  `filme` (
    `ano_lancamento`,
    `codigo`,
    `duracao`,
    `estoque`,
    `nome`
  )
values
  ('2010', 6, 120, 0, 'Era uma vez');

insert into
  `filme` (
    `ano_lancamento`,
    `codigo`,
    `duracao`,
    `estoque`,
    `nome`
  )
values
  ('2010', 7, 150, 0, 'A vinda dos que não foram 4');

CREATE TABLE `genero` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE = InnoDB AUTO_INCREMENT = 8 DEFAULT CHARSET = latin1;

insert into
  `genero` (`codigo`, `nome`)
values
  (2, 'Ação');

insert into
  `genero` (`codigo`, `nome`)
values
  (3, 'Ficção Científica');

insert into
  `genero` (`codigo`, `nome`)
values
  (4, 'Comédia');

insert into
  `genero` (`codigo`, `nome`)
values
  (5, 'Romance');

insert into
  `genero` (`codigo`, `nome`)
values
  (6, 'Drama');

CREATE TABLE `filme_genero` (
  `filme_codigo` int(11) NOT NULL,
  `genero_codigo` int(11) NOT NULL,
  UNIQUE KEY `UK_GeneroFilme` (`filme_codigo`, `genero_codigo`),
  KEY `FK_GeneroFilme` (`genero_codigo`),
  CONSTRAINT `FK_FilmeGenero` FOREIGN KEY (`filme_codigo`) REFERENCES `filme` (`codigo`) ON DELETE CASCADE,
  CONSTRAINT `FK_GeneroFilme` FOREIGN KEY (`genero_codigo`) REFERENCES `genero` (`codigo`) ON DELETE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

insert into
  `filme_genero` (`filme_codigo`, `genero_codigo`)
values
  (1, 2);

insert into
  `filme_genero` (`filme_codigo`, `genero_codigo`)
values
  (1, 3);

insert into
  `filme_genero` (`filme_codigo`, `genero_codigo`)
values
  (2, 4);

insert into
  `filme_genero` (`filme_codigo`, `genero_codigo`)
values
  (6, 4);

insert into
  `filme_genero` (`filme_codigo`, `genero_codigo`)
values
  (3, 5);

insert into
  `filme_genero` (`filme_codigo`, `genero_codigo`)
values
  (6, 5);

insert into
  `filme_genero` (`filme_codigo`, `genero_codigo`)
values
  (3, 6);

insert into
  `filme_genero` (`filme_codigo`, `genero_codigo`)
values
  (7, 6);

CREATE TABLE `reserva` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `data_reserva` date NOT NULL,
  `data_limite_devolucao` date NOT NULL,
  `total` decimal(12, 2) DEFAULT NULL,
  `cliente_codigo` int(11) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `FK_ClienteReserva` (`cliente_codigo`),
  CONSTRAINT `FK_ClienteReserva` FOREIGN KEY (`cliente_codigo`) REFERENCES `cliente` (`codigo`) ON DELETE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = latin1;

CREATE TABLE `reserva_filme` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `reserva_codigo` int(11) NOT NULL,
  `filme_codigo` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `data_devolucao` date DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `FK_ReservaFilme` (`reserva_codigo`),
  KEY `FK_FilmeReserva` (`filme_codigo`),
  CONSTRAINT `FK_FilmeReserva` FOREIGN KEY (`filme_codigo`) REFERENCES `filme` (`codigo`),
  CONSTRAINT `FK_ReservaFilme` FOREIGN KEY (`reserva_codigo`) REFERENCES `reserva` (`codigo`) ON DELETE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = latin1;

CREATE TABLE `usuario` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = latin1;
