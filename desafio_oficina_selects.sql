
-- Clientes com agendamento
SELECT c.ID, c.cpf, c.Nome, c.Fone, c.Endereco
FROM desafio_oficina.cliente c
INNER JOIN desafio_oficina.agendamento a ON c.ID = a.cliente_ID;

-- Carros dos clientes
SELECT c.Nome AS Nome_Cliente, v.Placa, v.Tipo, v.Marca, v.Cor, v.Ano
FROM desafio_oficina.cliente c
INNER JOIN desafio_oficina.cliente_veiculos cv ON c.ID = cv.cliente_ID
INNER JOIN desafio_oficina.veiculo v ON cv.veiculo_ID = v.ID;

-- OS abertas por cliente
SELECT c.Nome AS Nome_Cliente, v.Placa AS Placa_Veiculo, os.ID AS ID_Ordem_Servico, os.Data, os.DataEntrega, os.Autorizacao
FROM desafio_oficina.ordem_servico os
INNER JOIN desafio_oficina.veiculo v ON os.veiculo_ID = v.ID
INNER JOIN desafio_oficina.cliente c ON v.ID = c.ID;

-- Valor total das OS
SELECT
    os.ID AS ID_Ordem_Servico,
    os.Data AS Data_Ordem_Servico,
    IFNULL(SUM(mo.unidade * mobra.valor), 0) + IFNULL(SUM(pr.valor), 0) AS Custo_Total
FROM
    desafio_oficina.ordem_servico os
LEFT JOIN
    desafio_oficina.mo_os mo ON os.ID = mo.ordem_servico_ID
LEFT JOIN
    desafio_oficina.os_pecas op ON os.ID = op.ordem_servico_ID
LEFT JOIN
    desafio_oficina.peca_reposicao pr ON op.peca_reposicao_ID = pr.ID
LEFT JOIN
    desafio_oficina.mao_de_obra mobra ON mo.mao_de_obra_ID = mobra.ID
GROUP BY
    os.ID, os.Data;

    -- Desculpe, não pude continuar, mas tem muito mais consultas a realizar