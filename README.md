:book:Criando e Editando datasets para treinar e relembrar SQL
---

|Versão|Descrição sobre o que foi trabalhado|
|:---:|:---|
|Primeira Versão|Adicionei uma tabela chamada pessoas que possui atributos como id(chave primária), nome, data de nascimento, sexo, peso, tamanho e nacionalidade|
|Segunda Versão|Criei uma nova tabela chamada cursos com uma chave primária chamada idcurso, além disso utilizei o comando alter table para modificar o tamanho do varchar da coluna profissão de 10 para 20|
|Terceira Versão|Adicionei e modifiquei os valores nos campos da tabela cursos, foram utilizados os comandos Update, Delete e Truncate|
|Quarta Versão|Restaurei o dataset pois havia testado o uso do truncate no dia anterior e depois pratiquei o comando select para selecionar ou ordenar utilizando caracteristicas específicas como base|
|Quinta Versão|Segui com a prática do comando select, trabalhei com modificadores como And, Or, Like, Between, Max, Min, Avg e os utilizei em conjunto para criar buscas mais avançadas| 
|Sexta Versão|Utilizei o Comando Group by para agrupar os dados e verificar informações como a quantidade de pessoas por profissão. Também utilizei parametros de forma aninhada para verificar a quantidade de cursos por total de aulas que possuem o total de aulas maior que a média de aulas|
|Sétima Versão|Estudei e Apliquei conceitos de bancos de dados relacionais, criei a coluna de chave estrangeira chamada curso_preferido e utilizei um select aliado a um inner join para verificar o nome da pessoa, o nome de seu curso favorito e o ano de lançamento do Curso, também utilizei outer join utilizando a tabela cursos como principal para verificar a preferência dos cursos, inclusive daqueles que não possuiam pessoas interessadas|
|Oitava Versão|Apliquei os conceitos de bancos de dados relacionais para trabalhar uma relação N para N. Criar uma nova table chamada "p_assiste_c" e cadastrei as chaves primarias das tabelas "pessoas" e "cursos" como chave estrangeira dentro da nova tabela, além disso adicionei a coluna "data" para registra o dia de inicio dessa ação, após utilizar o comando insert into para adicionar valores a essa tabela eu utilizei o comando select com os parametros join ligando as 3 tabelas para criar uma busca que nos desse o nome da pessoa, o curso que ela começou a assistir e a data que se iniciou a ação|
|Considerações Finais|Foi um ótimo aprendizado para melhorar a minha base em bancos de dados, relembrei conceitos que havia estudado na faculdade no ano passado e fui capaz de aprofunda-los ainda mais, hoje sinto confiante em dizer que sei SQL e me sinto muito feliz por tal realização|
