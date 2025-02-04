CREATE DATABASE monitoramento_desempenho;
USE monitoramento_desempenho;

-- Tabela de Desempenho dos Funcionários
CREATE TABLE desempenho_funcionario (
    id_funcionario INT PRIMARY KEY,
    nome VARCHAR(100),
    departamento VARCHAR(50),
    tarefas_concluidas INT,
    pontuacao_eficiencia DECIMAL(5,2)
);

-- Tabela de Desempenho de Vendas
CREATE TABLE desempenho_vendas (
    id_venda INT PRIMARY KEY AUTO_INCREMENT,
    id_funcionario INT,
    receita DECIMAL(10,2),
    data_venda DATE,
    FOREIGN KEY (id_funcionario) REFERENCES desempenho_funcionario(id_funcionario)
);

-- Tabela de Eficiência Operacional
CREATE TABLE eficiencia_operacional (
    id_operacao INT PRIMARY KEY AUTO_INCREMENT,
    nome_processo VARCHAR(100),
    tempo_execucao DECIMAL(5,2),
    taxa_sucesso DECIMAL(5,2)
);

-- Tabela de Tempo de Atividade do Sistema
CREATE TABLE uptime_sistema (
    id_log INT PRIMARY KEY AUTO_INCREMENT,
    percentual_uptime DECIMAL(5,2),
    horas_downtime DECIMAL(5,2),
    data_log DATE
);
