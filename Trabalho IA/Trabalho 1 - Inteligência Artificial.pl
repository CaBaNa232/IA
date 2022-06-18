/*Alunos: 
Bruno de Silveira Biazolli - RA: 760318
Joao Pedro Pereira - RA: 769714
Curso: Ciencia da Computacao
Disciplina: Inteligencia Artificial
Data de criacao: 30/03/2021
*/

investimento(categoria_1):- perfil(conservador), valor_investido(baixo).
investimento(categoria_1):- perfil(conservador), valor_investido(medio), periodo_aplicado(curto).
investimento(categoria_2):- perfil(conservador), valor_investido(medio), periodo_aplicado(longo).
investimento(categoria_2):- perfil(conservador), valor_investido(medio), situacao_financeira(adequada).
investimento(categoria_2):- perfil(conservador), situacao_financeira(inadequada).
investimento(categoria_2):- perfil(moderado), situacao_financeira(inadequada).
investimento(categoria_3):- perfil(moderado), valor_investido(medio), periodo_aplicado(mediano), situacao_financeira(adequada).
investimento(categoria_3):- perfil(moderado), valor_investido(alta), periodo_aplicado(mediano), situacao_financeira(adequada).
investimento(categoria_4):- perfil(moderado), valor_investido(medio), periodo_aplicado(longo), situacao_financeira(adequada).
investimento(categoria_4):- perfil(moderado), valor_investido(alta), periodo_aplicado(longo), situacao_financeira(adequada).
investimento(categoria_5):- perfil(agressivo), periodo_aplicado(longo), situacao_financeira(adequada), conhecimento_mercado(pouco). 
investimento(categoria_6):- perfil(agressivo), valor_investido(alta), situacao_financeira(adequada), conhecimento_mercado(muito).
perfil(conservador):- objetivo(preservar), tolerancia_risco(baixa).
perfil(moderado):- objetivo(acumular), tolerancia_risco(media).
perfil(moderado):- objetivo(acumular), tolerancia_risco(alta). 
perfil(moderado):- objetivo(especular), tolerancia_risco(media). 
perfil(agressivo):- objetivo(especular), tolerancia_risco(alta).
valor_investido(baixo):- valor(X), entre(X, 0, 30.000).
valor_investido(medio):- valor(X), entre(X, 30.000, 100.000). 
valor_investido(alta):- valor(X), maior(X, 100.000).
periodo_aplicado(curto):- periodo(X), menor_ou_igual(X, 12).
periodo_aplicado(mediano):- periodo(X), entre(X, 13, 36). 
periodo_aplicado(longo):- periodo(X), maior(X, 36).
situacao_financeira(inadequada):- ganhos(X,instavel), menor_ou_igual(X, 36.000).
situacao_financeira(adequada):- ganhos(X,estavel), maior(X, 50.000). 
maior(X,Y):- X > Y.
entre(X,Y,Z):- X > Y, X < Z.
menor_ou_igual(X, Y):- X =< Y.

/*Exemplos de situacoes iniciais*/

/*Categoria 3*/

/*
objetivo(acumular). 
tolerancia_risco(media).
valor(40.000).
periodo(24).
ganhos(60.000, estavel).
conhecimento_mercado(pouco).
*/

/*Categoria 5*/

/*
objetivo(especular).
tolerancia_risco(alta).
valor(50.000).
periodo(48).
ganhos(60.000, estavel).
conhecimento_mercado(pouco).
*/



/*Situacoes iniciais*/
/*Para testar as situaçoes iniciais, remova os comentarios, abaixo do nome da categoria*/

/*Categoria 1*/

/*
objetivo(preservar). 
tolerancia_risco(baixa).
valor(40.000).
periodo(12).
ganhos(60.000, estavel).
conhecimento_mercado(pouco).
*/

/*Categoria 2*/

/*
objetivo(preservar). 
tolerancia_risco(baixa).
valor(40.000).
periodo(24).
ganhos(60.000, estavel).
conhecimento_mercado(pouco).
*/

/*Categoria 4*/

/*
objetivo(especular). 
tolerancia_risco(media).
valor(80.000).
periodo(48).
ganhos(80.000, estavel).
conhecimento_mercado(muito).
*/

/*Categoria 6*/

/*
objetivo(especular).
tolerancia_risco(alta).
valor(110.000).
periodo(14).
ganhos(60.000, estavel).
conhecimento_mercado(muito).
*/