quantia_poupada(21000).
ganhos(25000, estavel).
dependentes(3).


poupanca_min(K, Y):- K is Y * 5000.
conta_poupanca(adequada):- quantia_poupada(X), dependentes(Y), poupanca_min(K,Y), X > K.
conta_poupanca(inadequada) :- quantia_poupada(X), dependentes(Y), poupanca_min(K,Y), X < K.

renda_min(K, Y) :- K is 15000 + (4000 * Y).
renda(adequada) :- ganhos(X, estavel), dependentes(Y), renda_min(K, Y), X > K.
renda(inadequada) :- ganhos(X, estavel), dependentes(Y), renda_min(K, Y), X < K.

investimento(poupanca) :- conta_poupanca(inadequada).
investimento(acoes) :- conta_poupanca(adequada), renda(adequada).
investimento(combinacao) :- conta_poupanca(adequada), renda(inadequada).



meses_Financ(24).
idoso(sim).
carteira_assinada(nao).
taxa_juros(2).
valor_Financ(5000).
rendaPessoal(15000).

emprestimo_Consig(adequado) :- valor_Financ(X), taxa_juros(Y), meses_Financ(Z), rendaPessoal(K), (((X+(X*Y))/Z) < K) ,(carteira_assinada(sim);idoso(sim)).
emprestimo_Consig(inadequado):- \+emprestimo_Consig(adequado).
