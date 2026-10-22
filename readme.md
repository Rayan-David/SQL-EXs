# 🗄️ Exercícios Práticos de SQL (DDL e DQL)

Este repositório contém uma série de scripts SQL práticos que demonstram a modelagem, criação e alteração de bancos de dados relacionais para diferentes cenários de negócios. 

## 📋 Índice

* [Visão Geral](#-visão-geral)
* [Cenários Práticos](#-cenários-práticos)
  * [Exercício 1: Academia](#1-academia-ex1sql)
  * [Exercício 2: Hospedagem Web](#2-hospedagem-web-ex2sql)
  * [Exercício 3: Sistema de Cinema](#3-sistema-de-cinema-ex3sql)
* [Comandos e Conceitos Abordados](#-comandos-e-conceitos-abordados)
* [Como Executar](#-como-executar)

## 📖 Visão Geral

Os scripts deste repositório foram desenvolvidos para fixar conceitos fundamentais de **DDL (Data Definition Language)**, como criação de tabelas, definição de chaves primárias e estrangeiras, além da alteração da estrutura das tabelas após sua criação (adicionando, modificando e removendo colunas).

---

## 🏗️ Cenários Práticos

### 1. Academia (`Ex1.sql`)
Modelagem de um banco de dados simples para gestão de matrículas em uma academia.
* **Banco de Dados:** `academia`
* **Tabelas:**
  * `plano`: Armazena os planos disponíveis e seus valores.
  * `aluno`: Armazena os dados dos alunos vinculados a um plano específico.
* **Destaques:** Criação de chaves estrangeiras, uso de `UNIQUE` para o CPF e comandos de alteração (`ALTER TABLE`) para adicionar e redimensionar colunas de e-mail.

### 2. Hospedagem Web (`Ex2.sql`)
Sistema para gerenciar clientes, servidores, sites e certificados SSL em uma empresa de hospedagem.
* **Banco de Dados:** `hospedagem`
* **Tabelas:** `cliente`, `plano_hospedagem`, `servidor`, `site`, `certificado_ssl`.
* **Destaques:** 
  * Relacionamentos mais complexos entre múltiplas tabelas.
  * Forte uso da restrição `UNIQUE` para e-mails, IPs, hostnames e domínios.
  * Operações de `ALTER TABLE` para modificar tipos de dados (ex: IPv6 suportado), adicionar colunas de sistema operacional e remover colunas (`DROP localizacao`).

### 3. Sistema de Cinema (`Ex3.sql`)
Banco de dados estruturado para o controle de sessões, salas e ingressos de um cinema.
* **Banco de Dados:** `cinema`
* **Tabelas:** `filme`, `sala`, `sessao`, `ingresso`, `promocao`.
* **Destaques:**
  * Uso do tipo `DATETIME` para horários de sessões.
  * **Chave Primária Composta:** A tabela `ingresso` utiliza a combinação de `sessao_id` e `poltrona` como identificador único.
  * Exclusão de tabelas e bancos de teste com `DROP TABLE` e `DROP DATABASE`.

---

## 🛠️ Comandos e Conceitos Abordados

Ao longo dos três arquivos, os seguintes comandos SQL são amplamente utilizados:

* **Gerenciamento de Bancos e Tabelas:** `CREATE DATABASE`, `CREATE TABLE`, `DROP DATABASE`, `DROP TABLE`.
* **Tipos de Dados:** `INT`, `VARCHAR`, `CHAR`, `DECIMAL`, `DATE`, `DATETIME`.
* **Restrições (Constraints):** `PRIMARY KEY` (Simples e Compostas), `FOREIGN KEY`, `NOT NULL`, `UNIQUE`, `AUTO_INCREMENT`.
* **Alterações Estruturais (`ALTER TABLE`):**
  * `ADD`: Adiciona novas colunas.
  * `MODIFY`: Altera a tipagem ou restrições de colunas existentes.
  * `DROP`: Remove colunas de uma tabela.
* **Visualização Estrutural:** `SHOW DATABASES`, `SHOW TABLES`, `DESCRIBE`.

---

## 🚀 Como Executar

1. Tenha um SGBD relacional instalado, como **MySQL** ou **MariaDB**.
2. Utilize um cliente SQL (Workbench, DBeaver, etc.) ou o terminal.
3. Baixe os arquivos `.sql` deste repositório.
4. Execute os arquivos em ordem ou abra-os individualmente para rodar as queries bloco a bloco.