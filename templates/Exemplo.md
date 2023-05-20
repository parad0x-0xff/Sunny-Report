# Vulnerabilidades Identificadas

\begin{tabular}{ccccccc}
\toprule 
\textbf{Titulo Vulnerabilidade} &&& \textbf{CVSS Score} &&& \textbf{Impacto p/ Negócio} \\
\midrule
\rowcolor{black!20} RCE Lateral &&& 8.0 &&& ALTO  \\
\rowcolor{white!20} Localhost Injection &&& 6.5 &&& MÉDIO  \\
\rowcolor{black!20} Hacker Hackeia &&& 10.0 &&& CRÍTICO  \\
\rowcolor{white!20} Client Side Cookie Forgery &&& 2.0 &&& BAIXO  \\
\rowcolor{black!20} IP Location &&& 4.0 &&& MÉDIO \\
\rowcolor{white!20} No byte Injection &&& 7.0 &&& ALTO \\
\bottomrule
\end{tabular}


\pagebreak[4]

## **RCE Lateral**

### Descrição

- **Endpoint Afetado:** www.example.com/api/v2/cmd.css

- **Descrição Endpoint:** API responsável pelo css da página.

\

Durante os testes foi identificado um css e foi possível atingir um RCE Lateral na aplicação.

### Evidências


![Shell](evidencias/3vil_Corp/rce-lateral.png){width=100%}


### Impacto
- **Impacto Técnico:** Foi possível executar comandos hackers de forma remota e lateral no ambiente.

- **Impacto Negócio:** A empresa pode ter impacto financeiro.

### Recomendação
O bloqueio do binário netcat evita o ataque de qualquer hacker.

### Referências 
1. [OWASP Brute Force](https://owasp.org/www-community/controls/Blocking_Brute_Force_Attacks)

[comment0]: # (##------------------------------------------------------##)


\pagebreak[4]

## **Localhost Injection**

- **Endpoint Afetado:** www.localhost.com/index.php

- **Descrição Endpoint:** Blog de notícias Wordpress

\

### Descrição
Durante os testes foi identificado que após acessar a página index foi possível ter acesso ao servidor.

### Evidências

![/etc/passwd](evidencias/3vil_Corp/localhost-injection.png){width=100%}


### Impacto

- **Exemplo Técnico:** Essa vulnerabilidade permite a execução de comandos no localhost.
- **Exemplo negócio:** Isso afeta diretamente o cliente que ao clicar no link malicioso, permite que o fraudador consiga acesso total a conta do cliente.

### Recomendação

Se houver mais de uma opção, escrever aqui para que possam ser discutidas posteriormente
pelo time responsável.


### Referências

Duas formas de se escrever as referências..

1. [OWASP Brute Force](https://owasp.org/www-community/controls/Blocking_Brute_Force_Attacks)
2. \textcolor{blue}{https://owasp.org/www-community/Improper\_Error\_Handling}

[comment1]: # (##---------------------------------------------------------##)


\pagebreak[4]

## **Hacker Hackeia**

- **Endpoint Afetado:** A comunidade BR de Hacking.

- **Descrição Endpoint:** Responsável por toda história do Hacking BR.

\

### Descrição
Durante os testes foi identificado que meliantes estão se apropriando de bordões criados por outras pessoas.


### Evidências

![Shell](evidencias/3vil_Corp/hacker_hackeia.png){width=110%}

### Impacto

- **Descrição Técnica:** Essa vulnerabilidade pode ocasionar traumas e condições neurológicas afetadas.
- **Descrição Negócio:** Isso afeta diretamente a imagem da empresa visto que vai ficar queimada na comunidade.

### Recomendação

Para que ta feio!

### Referências

[\textcolor{blue}{Manifesto Hacker}](http://phrack.org/issues/7/3.html)

[comment2]: # (##----------------------------------------------------------##)

\pagebreak[4]


# Considerações

Recomenda-se corrigir as vulnerabilidades identificadas durante o teste para garantir que um invasor não possa explorar esses sistemas no futuro.
Vale lembrar que esses sistemas requerem avaliações frequentes e uma vez corrigidos, devem ser retestados afim de garantir que a correção aplicada é eficaz.
