-- Cria o Banco de Dados
CREATE DATABASE crud_java CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Usuario para ler e escrever nas tabelas
create user 'app_reader'@'localhost' IDENTIFIED by 'Viagem2981%';
grant select on crud_java.* to 'app_reader'@'localhost';

-- Usuario para atualizar e excluir dados dentro da tabela
create user 'app_editor'@'localhost' identified by 'GrandChase2025#';
grant insert, update, delete on crud_java.* to 'app_editor'@'localhost';

-- Usuario admin
create user 'app_admin'@'localhost' identified by 'Discordia261*';
grant create, drop, alter, index, trigger on crud_java.* to 'app_admin'@'localhost';


