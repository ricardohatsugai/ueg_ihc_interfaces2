# *UEG - Campus Trindade*    <img src="imagens/uegTrindade.png" width="80" height="80">

## *Versão 1 - 09/08/2022*

### O  trabalho consiste na construção de um protótipo de um sistema de cadastro, consulta e relatório, que deverá atender aos princípios de Ergonomia e Usabilidade.

## **Objetivos**
1. Perseguir a consistência.
2. Fornecer atalhos.
3. Fornecer feedback informativos.
4. Marcar o final dos diálogos e manipulação simples de erros.
5. Permitir o cancelamento das ações.
6. Fornecer controle e iniciativa ao usuário.
7. reduzir a carga de memória de trabalho.


### Integrantes do grupo:
- Alexandre de Almeida Xavier.
- Hugo de Souza e Silva.
- Renato Fernandes Barreto.
- Pedro Henrique Pires Fabiano.
- Ricardo Hatsugai

### Ferramentas utilizadas para este projeto:
- Delphi 10.1 (Tokio-Trial).
- Microsoft Access 2019 (Modo de compatibilidade 2003).

## **Sobre o sistema**

## *SYSFIN - Sistema de Gerenciamento de Finanças*

**Este sistema será um sistema simples de cadastro de lançamentos de despesa, usuario, consultas.**
	
Tabelas

- Despesa:

	1 - id int not null auto incremento;
  
	2 - data date not null;
  
	3 - descricao varchar(30) not null;
  
	4 - valor decimal(18,2) not null;
	
- Usuario
	1 - id int not null auto incremento;
  
	2 - nome varchar(30) not null;
  
	3 - cpf varchar(11);
  
	4 - ident varchar(30);
  
	5 - username varchar(30);
  
	6 - senha varchar(50);
