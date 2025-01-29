# Vulnerabilidades Identificadas

\begin{table}
\centering
\begin{minipage}{\textwidth}{}
\begin{tabularx}{\linewidth}{|cXcc|}
\toprule
\textbf{Identificador} & \textbf{Título da Vulnerabilidade} & \textbf{Risco} \\
\midrule
\rowcolor{purple!100} UID-01 & Stored XSS & CRÍTICO  \\
\rowcolor{red!80} UID-02 & IDOR & ALTO  \\
\rowcolor{yellow!80} UID-03 & SQL Injection & MÉDIO  \\
\rowcolor{yellow!80} UID-04 & Login Bypass & MÉDIO \\
\rowcolor{green!60} UID-05 & Exposed API Key & BAIXO \\
\bottomrule
\end{tabularx}
\end{minipage}
\end{table}


>Todas as informações contidas aqui são confidenciais e não devem ser copiadas ou divulgadas antes do consentimento formal da empresa.

\pagebreak[4]

## **Stored XSS**

### Descrição

- **Endpoint Afetado:** www.example.com/api/v2/admin

- **Descrição Endpoint:** API responsável pelo acesos adminstrativo do sistema.

\

Durante os testes foi identificado uma possível injeção de javascript na página de admin do sistema **ABC**
que permitiu o acesso a contas de clientes e funcionários.

### Evidências


![Shell](evidencias/3vil_Corp/rce-lateral.png){width=100%}


### Impacto no ambiente

Além do acesso indevido a conta do cliente, foi possível extrair informações pessoais e alterar dados cadastrais.



### Recomendação/Mitigação

- Aplicar uma regra de WAF para evitar esse tipo de ataque como forma de mitigação.
- Utilizar DOM Purify ou outra biblioteca que realize a sanitização dos campos da aplicacão.

### Referências

1. [\textcolor{blue}{DOM Purify}](https://www.npmjs.com/package/dompurify/v/2.1.1)

[comment0]: # (##-----------------------------------------------------------------------------------------##)


\pagebreak[4]


# Considerações

As vulnerabilidades identificadas representam um alto risco financeiro reputacional para a **{{header-left}}**.
Uma vez que qualquer usuário logado no sistema **XPTO** é capaz de realizar um upload de um arquivo malicioso e obter acesso indevido ao sistema.

Recomenda-se corrigir as todas as vulnerabilidades reportadas durante o teste para garantir que um agente mal-intencionado não seja capaz de explorar esses sistemas no futuro, se utilizando das mesmas. 

Vale lembrar que esses sistemas requerem avaliações frequentes e uma vez corrigidos, devem ser retestados afim de garantir que a correção aplicada é eficaz.
