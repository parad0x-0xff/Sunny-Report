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
titlepage-color: "000626"
titlepage-text-color: "ffffff"
titlepage-rule-color: "ffffff"
titlepage-rule-height: 2
titlepage-background: "static/images/logo.jpg"
book: true
classoption: oneside
code-block-font-size: \scriptsize
fontsize: "14pt"
header-includes:
- \usepackage{booktabs}
- \usepackage{colortbl}
- \usepackage{tabularx}
mustache: ./vars.yaml
---

# Sumário Executivo

Durante a realização dos testes de segurança a equipe da **{SUA EMPRESA}** foi capaz de indentificar vulnerabilidades que puderam comprometer o ambiente de backoffice,assim como um acesso ao servidor XYZ de produção que permitiu a escalação de privilégios dentro da rede interna obtendo credenciais e planilhas com valores financeiros.


## Objetivo

O objetivo desta avaliação foi realizar um teste de intrusão.
Este teste simula uma tentativa de intrusão real e afim de identificar vulnerabilidades no ambiente.
Permitindo que a **{{header-left}}** possa agir proativamente na correção de vulnerabilidades do ambiente testado.
Este relatório apresenta um parecer sobre os riscos existentes, assim como aponta ações necessárias para correção e/ou mitigação dos mesmos.

\pagebreak[4]

# Especificações Técnicas

Para realizar um teste de intrusão bem feito é necessário seguir os padrões de mercado.
Só assim é possível garantir excelência na execução do teste independente do ambiente avaliado.

**OBS:** Algumas nomenclaturas foram mantidas em inglês, afim de preservar os padrão internacionalmente utilizado.

## Glossário

- **CVE** (Common Vulnerabilities and Exposures): Um identificador único para vulnerabilidades conhecidas, usado para rastrear e catalogar falhas de segurança publicamente divulgadas.
- **CWE** (Common Weakness Enumeration): Uma lista categorizada de falhas de design e desenvolvimento que podem levar a vulnerabilidades de segurança.
- **Exploit**: Um código ou técnica usado para explorar uma vulnerabilidade e obter acesso não autorizado ou controle de um sistema.
- **Payload**: Parte de um exploit que realiza a ação maliciosa após a exploração bem-sucedida de uma vulnerabilidade.
- **Zero-Day**: Uma vulnerabilidade previamente desconhecida pelos responsáveis pelo sistema, sem correção disponível.

\pagebreak[4]

## Classificação de Risco

O risco é um evento que pode ocorrer no futuro e causar certos impactos, enquanto uma vulnerabilidade é uma fraqueza associada a um ativo, que pode vir a ser explorada por potenciais ameaças. O Risco é definido pela multiplicação entre o impacto e a probabilidade que uma vulnerabilidade tem de ser explorada.

![Impacto vs Probabilidade](static/images/impacto-probabilidade.png){width=110%}

\pagebreak[4]

## Calculadora CVSS

O Common Vulnerability Scoring System (CVSS) é uma estrutura aberta para comunicar as características e a gravidade das vulnerabilidades de um software. O CVSS consiste em três grupos de métricas: Base, Temporal e Ambiental.

As métricas Base produzem uma pontuação que varia de **0 a 10**, que pode ser modificada pela pontuação das métricas Temporal e Ambiental. Assim, o CVSS funciona como um sistema de medição padrão para indústrias, organizações e governos que precisam de classificar a gravidade das vulnerabilidades de forma precisa e consistente.

Dois usos comuns do CVSS são:

- Cálculo da gravidade das vulnerabilidades;
- Fator de priorização de correção de vulnerabilidades.

![Descrição - CVSS](static/images/cvss.png){width=110%}

Calculadora CVSS 3.0: \textcolor{blue}{https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator}

\pagebreak[4]

## Metodologias

Diversas organizações ao redor do mundo se dedicam a estudar e categorizar vulnerabilidades de segurança, fornecendo informações valiosas para profissionais que desejam compreender o cenário atual de ameaças. Essas organizações publicam documentos, classificações e ferramentas que ajudam a identificar as vulnerabilidades mais relevantes ao longo do tempo, guiando equipes de segurança na priorização de esforços.

### OWASP

O OWASP – Open Web Application Security Project é uma comunidade global que promove a segurança no desenvolvimento de software. Seu objetivo é educar desenvolvedores e especialistas de segurança para que adotem boas práticas e desenvolvam sistemas mais seguros. 

Através de iniciativas colaborativas, o OWASP disponibiliza gratuitamente:

- Artigos educativos;
- Metodologias de segurança;
- Documentação técnica;
- Ferramentas.

\pagebreak[4]

### OWASP Top 10

O OWASP Top 10 é um documento de conscientização amplamente reconhecido, que apresenta os dez riscos mais críticos para a segurança de aplicações web. Atualizado periodicamente, o OWASP Top 10 serve como um guia essencial para desenvolvedores e equipes de segurança, destacando:

- As vulnerabilidades mais comuns e perigosas;
- Exemplos práticos para identificação;
- Recomendações de mitigação.

Além do Top 10 voltado para aplicações web, o OWASP ampliou seu escopo e atualmente também aborda segurança em outras áreas, como:
**APIs**, **Apps mobile**, **blockchain** e **LLMs**. Adaptando as recomendações aos desafios particulares de cada área.

![OWASP TOP 10](static//images/owasp-top10.png){width=100%}
