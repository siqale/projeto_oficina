-- Inserir dados fictícios na tabela "oficina"
INSERT INTO desafio_oficina.oficina (nome, cnpj, endereco, telefone)
VALUES ('Oficina A', '12345678901234', 'Endereço A', '1234567890');

-- Inserir dados fictícios na tabela "cliente"
INSERT INTO desafio_oficina.cliente (oficina_ID, cpf, Nome, Fone, Endereco)
VALUES 
  (1, '12345678901', 'Cliente 1', '987654321', 'Endereço Cliente 1'),
  (1, '12345678981', 'Cliente 2', '915654321', 'Endereço Cliente 2'),
  (1, '12333378901', 'Cliente 3', '987654421', 'Endereço Cliente 3'),
  (1, '12345677801', 'Cliente 4', '987650321', 'Endereço Cliente 4'),
  (1, '12345622201', 'Cliente 5', '987654331', 'Endereço Cliente 5');

-- Inserir dados fictícios na tabela "agendamento"
INSERT INTO desafio_oficina.agendamento (Descricao, data, cliente_ID)
VALUES ('Agendamento 1', '2023-09-05 10:00:00', 1);

-- Inserir dados fictícios na tabela "equipe"
INSERT INTO desafio_oficina.equipe (nome)
VALUES 
  ('Equipe 1'),
  ('Equipe 2'),
  ('Equipe 3'),
  ('Equipe 4'),
  ('Equipe 5');

-- Inserir dados fictícios na tabela "veiculo"
INSERT INTO desafio_oficina.veiculo (Placa, Tipo, Marca, Cor, Ano)
VALUES
  ('ABC333', 'Carro 1', 'Citroen', 'Vermelho', 2020),
  ('ABC123', 'Carro 2', 'Renault', 'Azul', 2020),
  ('ABC444', 'Carro 3', 'Honda', 'Preto', 2020),
  ('ABC155', 'Carro 4', 'GM', 'Branco', 2020),
  ('ABC553', 'Carro 5', 'Hyundai', 'Rosa', 2020),
  ('ABC923', 'Carro 6', 'GM', 'Pink', 2020),
  ('ABC623', 'Carro 7', 'VW', 'Lilaz', 2020),
  ('ABC166', 'Carro 8', 'Ford', 'Verde Limão', 2020),
  ('ABC187', 'Carro 9', 'Tesla', 'Preto', 2020),
  ('ABC578', 'Carro Y', 'Mercedes', 'Marrom', 2020),
  ('ABC987', 'Carro X', 'Ferrari', 'Vermelho', 2020);

-- Inserir dados fictícios na tabela "ordem_servico"
INSERT INTO desafio_oficina.ordem_servico (veiculo_ID, DataEntrega, Autorizacao)
VALUES 
  (1, '2023-09-05 15:00:00', '1'),
  (2, '2023-09-06 17:00:00', '1'),
  (3, '2023-09-10 15:00:00', '1'),
  (4, '2023-09-11 15:00:00', '1');

-- Inserir dados fictícios na tabela "mao_de_obra"
INSERT INTO desafio_oficina.mao_de_obra (descricao, valor, Observacao)
VALUES 
  ('Serviço de Troca de Óleo', 50.00, 'Troca de óleo padrão'),
  ('Serviço de Troca de Amortecedor', 75.00, 'Troca de amortecedor padrão'),
  ('Serviço de Troca de Molas', 80.00, 'Troca de molas padrão'),
  ('Serviço de Troca de Freio', 100.00, 'Troca de freio padrão'),
  ('Serviço de Troca de Embreagem', 1500.00, 'Troca de embreagem padrão');

-- Inserir dados fictícios na tabela "cliente_veiculos"
INSERT INTO desafio_oficina.cliente_veiculos (cliente_ID, veiculo_ID, observacao)
VALUES 
  (1, 1, 'Veículo do cliente 1'),
  (2, 3, 'Veículo do cliente 2'),
  (1, 2, 'Veículo do cliente 3'),
  (4, 5, 'Veículo do cliente 4'),
  (5, 7, 'Veículo do cliente 5'),
  (5, 8, 'Veículo do cliente 6');

-- Inserir dados fictícios na tabela "empregado"
INSERT INTO desafio_oficina.empregado (oficina_ID, tipo, rg, cpf, endereco, salario)
VALUES 
  (1, 'Operacional', '1234567890', '98765488809', 'Endereço Empregado 1', 2000.00),
  (1, 'Operacional', '1234555890', '98765499909', 'Endereço Empregado 2', 2200.00),
  (1, 'Administrativo', '1234567880', '98767772109', 'Endereço Empregado 3', 3000.00),
  (1, 'Operacional', '1554567890', '98765965109', 'Endereço Empregado 4', 1800.00),
  (1, 'Operacional', '5544567890', '98764512109', 'Endereço Empregado 5', 2500.00),
  (1, 'Operacional', '1233367890', '98765435489', 'Endereço Empregado 6', 2100.00);

-- Inserir dados fictícios na tabela "especialidade"
INSERT INTO desafio_oficina.especialidade (descricao)
VALUES 
  ('Mecânico de Motor'),
  ('Mecânico de Câmbio'),
  ('Mecânico de Suspensão'),
  ('Mecânico de Direção Hidráulica'),
  ('Mecânico de Injeção Eletrônica');

-- Inserir dados fictícios na tabela "especialidade_empregado"
INSERT INTO desafio_oficina.especialidade_empregado (especialidade_ID, empregado_ID, descricao)
VALUES 
  (1, 1, 'Especialista em motores'),
  (3, 2, 'Especialista em Suspensão'),
  (5, 4, 'Especialista em injeção'),
  (4, 3, 'Especialista em direção servo-assistida'),
  (2, 5, 'Especialista em câmbio');

-- Inserir dados fictícios na tabela "mo_os"
INSERT INTO desafio_oficina.mo_os (mao_de_obra_ID, ordem_servico_ID, empregado_ID, unidade, obs)
VALUES 
  (1, 1, 1, 2.5, 'Troca de óleo realizada'),
  (2, 4, 2, 3.0, 'Troca de amortecedor realizada'),
  (1, 2, 1, 1.5, 'Troca de óleo realizada'),
  (3, 2, 2, 2.0, 'Troca de molas realizada'),
  (4, 3, 3, 2.5, 'Troca de direcao realizada');

-- Inserir dados fictícios na tabela "equipe_empregados"
INSERT INTO desafio_oficina.equipe_empregados (equipe_ID, empregado_ID)
VALUES 
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5);

-- Inserir dados fictícios na tabela "peca_reposicao"
INSERT INTO desafio_oficina.peca_reposicao (codigo, descricao, valor)
VALUES 
  ('12345', 'Filtro de Óleo', 10.00),
  ('12346', 'Kit de Amortecedor', 100.00),
  ('12347', 'Kit de direção', 100.00),
  ('12345', 'Kit de mola', 250.00),
  ('12345', 'Velas de ignição', 150.00);

-- Inserir dados fictícios na tabela "os_pecas"
INSERT INTO `os_pecas` (`peca_reposicao_ID`, `ordem_servico_ID`, `quantidade`) 
VALUES 
  ('4', '2', 3.5),
  ('4', '3', 5.0);

-- Inserir dados fictícios na tabela "fornecedor"
INSERT INTO desafio_oficina.fornecedor (razao_social, cnpj, endereco, telefone)
VALUES 
  ('Fornecedor XYZ', '98765432109876', 'Endereço Fornecedor 1', '999888777'),
  ('Fornecedor ABC', '98765432185276', 'Endereço Fornecedor 2', '889888777'),
  ('Fornecedor DEF', '98767412109876', 'Endereço Fornecedor 3', '999888784'),
  ('Fornecedor JKL', '98765432109369', 'Endereço Fornecedor 4', '999888895'),
  ('Fornecedor 456', '91235432109876', 'Endereço Fornecedor 5', '915988777');

-- Inserir dados fictícios na tabela "fornecedor_pecas"
INSERT INTO desafio_oficina.fornecedor_pecas (fornecedor_ID, peca_reposicao_ID, valor)
VALUES 
  (1, 1, 9.00),
  (2, 2, 90.00),
  (3, 4, 190.00),
  (4, 3, 80.00),
  (5, 1, 8.00),
  (1, 3, 70.00);
