---
title: '{{title}}'
subtitle: '{{subtitle}}'
author: '{{author}}'
toc-title: '{{toc-title}}'
date: '{{date}}'
header-left: '{{header-left}}'
footer-left: '{{footer-left}}'
lang: "en"
titlepage: true
titlepage-color: "000000"
titlepage-text-color: "ffffff"
titlepage-rule-color: "ffffff"
titlepage-rule-height: 2
titlepage-background: "static/images/pirate_logo.png"
book: true
classoption: oneside
code-block-font-size: \scriptsize
fontsize: "13pt"
mustache: ./vars.yaml
---

# Sumário Executivo

## Autor & Escopo

**Autor**      | | | |**Escopo** | | | | | | | | **Ambiente**| | | | | |**Versão**
---------------|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|-----
               | | | | | | | | | | | | | | | | | |
{{tester}}     | | | |{{escopo}} | | | | | | | | {{ambiente}}| | | | | |{{versao}}


## Objetivo

O objetivo desta avaliação foi realizar um teste de intrusão.
Este teste deve simular um teste de intrusão real e afim de identificar vulnerabilidades no ambiente.
A fim de agir proativamente na correção de vulnerabilidades em nosso ambiente, este relatório
apresenta um parecer sobre os riscos existentes, assim como aponta ações necessárias para correção e/ou mitigação dos mesmos.

## Aviso de confidencialidade

Todas as informações contidas aqui são confidenciais e não devem ser copiadas ou divulgadas antes do consentimento formal da empresa.

\pagebreak[4]

## Classificação de Risco

O risco é um evento que pode ocorrer no futuro e causar certos impactos, enquanto uma vulnerabilidade é uma fraqueza associada a um ativo, que pode vir a ser explorada por potenciais ameaças. O Risco é definido pela multiplicação entre o impacto e a probabilidade que uma vulnerabilidade tem de ser explorada.

![Impacto vs Probabilidade](static/images/Impacto-probabilidade.png){width=110%}

\pagebreak[4]

## CVSS

O Common Vulnerability Scoring System (CVSS) é uma estrutura aberta para comunicar as características e a gravidade das vulnerabilidades de software. O CVSS consiste em três grupos de métricas: Base, Temporal e Ambiental. As métricas Base produzem uma pontuação que varia de 0 a 10, que pode ser modificada pela pontuação das métricas Temporal e Ambiental. Assim, o CVSS é adequado como um sistema de medição padrão para indústrias, organizações e governos que precisam de pontuações da gravidade das vulnerabilidades de forma precisa e consistente. Dois usos comuns do CVSS são o cálculo da gravidade das vulnerabilidades e como um fator de priorização das atividades de correção de vulnerabilidades.

Segue abaixo a tabela da classificação da pontuação do CVSS, assim como o link para a calculadora.


\begin{center}
\begin{tabular}{cccc}
\toprule
\textbf{Gravidade} &&& \textbf{Pontuação}  \\
\midrule
\rowcolor{gray!20} Nula &&& 0.0  \\
\rowcolor{green!40} Baixa &&& 0.1 - 3.9  \\
\rowcolor{yellow!50} Média &&& 4.0 - 6.9  \\
\rowcolor{red!50} Alta &&& 7.0 - 8.9 \\
\rowcolor{purple!60} Crítica &&& 9.0 - 10.0 \\
\bottomrule
\end{tabular}
\end{center}

\
\
\

Calculadora CVSS 3.0: \textcolor{blue}{https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator}

\pagebreak[4]

## Metodologia

- **OWASP** (Open Web Application Security Project), ou Projeto Aberto de Segurança em Aplicações Web, é uma comunidade online que cria e disponibiliza de forma gratuita artigos, metodologias, documentação, ferramentas e tecnologias no campo da segurança de aplicações web.

- **WSTG** (Web Security Testing Guide) ou guia de testes de segurança web, é um documento completo
que auxilia o profissional de segurança da informação durante os testes de técnicos.
Este documento foi elaborado por profissionais de segurança ao redor do mundo.

- **OWASP Top 10** é um documento de conscientização que descreve questões de segurança para aplicativos web, com foco nos 10 riscos mais críticos.

![OWASP TOP 10](static//images/owasp-top10.png){width=100%}
