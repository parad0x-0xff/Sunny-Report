# Sunny-Report

Pentest Report Generator

Este repositório contém os arquivos necessários para gerar relatórios de pentest através de
arquivos markdown utilizando LateX como base. A principal ideia é facilitar e agilizar a escrita de relatórios mantendo um padrão.

## Para que serve ?

Automatiza grande parte de gerar um relatório, auxiliando na velocidade de entrega e deixando essa parte menos honerosa, para quem precisa escrever somente o essencial.
A utilização do Markdown como linguagem nativa facilita a reutilização de anotações feitas durante um teste de intrusão.

## Como instalar ?

> Utilização de sudo/root é necessária para esta instalação!

**MacOS:**

```sh
brew install pandoc pipx &&
brew install --cask mactex-no-gui &&
pipx install pandoc-mustache
```

**Linux / WSL no Windows:**

```sh
apt install wget pandoc texlive-latex-base texlive-fonts-extra pipx -y &&
pipx install pandoc-mustache &&
pipx ensurepath &&
cp ~/.local/bin/pandoc-mustache /usr/local/bin/
```

>Se houver algum erro durante a instalação, verifique o PATH dos executáveis.
>Em alguns casos a instalação do latex exige que o terminal seja reiniciado após
>sua instalação.

## Como funciona ?

Você pode utilizar o arquivo Exemplo-Relatório.md que ficará na pasta templates como base para criar novos
relatórios.

Crie um arquivo markdown dentro da pasta **src**, uma vez editado
basta executar o `./generate.sh + src/Nome_do_relatório.md` que automagicamente
um arquivo na pasta output será criado em pdf.

## Nova Estrutura

- **Variáveis:**
    - Agora o arquivo markdown está utilizando variáveis para facilitar ainda mais o processo de escrita. O arquivo **vars.yaml**, contém os valores que precisam ser alterados ex: (nome, título, data, etc). Com isso o plugin mustache do pandoc foi adicionado e precisa ser instalado.

- **Melhorias gerais:**
	- Foram adicionadas informações como: Metodologia, CVSS, endpoint afetado e descrição do endpoint, a parte de risco foi reescrita, tabelas melhores feitas em LateX, alteração da fonte e adição de um comentário para lembrar a pessoa analista de escrever o impacto da vulnerabilidade visando o contexto técnico e o contexto de negócio.

-  **Arquivo markdown:**
	-  A principal mudança aqui foi que agora a estrutura do relatório não fica mais junta das vulnerabilidades, o próprio script se encarrega de concatenar as informações antes de converter para pdf, deixando mais simples e limpo o relatório de vulnerabilidades em si. Todo o complemento do relatório encontra-se no arquivo **structure.md** dentro de templates.

- **Saída em CSV:**
    - A ideia é ir melhorando essa parte para que fique fácil tranferir as vulnerabilidades para uma planilha e ter o controle de todos os findings.

## Dicas Gerais

Para ajudar na escrita do relatório e realizar alguns ajustes de formatação caso necessário.

- [x] Utilize o `\` para quebrar uma linha.
- [x] Utilize o  `\pagebreak[4]` para pular uma página.
- [x] Para colorir algum texto específico utilizando LateX --> `\textcolor{yellow}{AMARELO}`
- [x] Utilize o arquivo **Exemplo-Relatório.md** dentro de templates para ver essas e outras funcionalidades do LateX.

Utilize o arquivo `templates/Exemplo.md` para gerar um exemplo e validar se está funcionando corretamente.
Os arquivos que você irá precisar alterar para personalizar são:

- [x] `structure.md` {para alterar a capa, cores e tamanho da fonte, etc.}
- [x] `vars.yaml` {para alterar versionamento, tipo de teste, data, etc.}
- [x] `eisvogel.latex` {linha 892 para alterar o tamanho da logo da capa}

## Docker

>A ideia é migrar para uma imagem mais leve, mas por enquanto é ubuntu.

```sh
docker-compose up --build &&
docker-compose run --rm sunny templates/Exemplo.md
```

## Créditos

Esse trabalho foi realizado baseado no gerador de relatório da [OSCP](https://github.com/noraj/OSCP-Exam-Report-Template-Markdown).
