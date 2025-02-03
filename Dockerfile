FROM ubuntu

WORKDIR /app
ENV DEBIAN_FRONTEND=noninteractive 

RUN apt update && \
    apt install wget pandoc texlive-latex-base texlive-fonts-extra pipx -y && \
    pipx install pandoc-mustache && \
    pipx ensurepath && \
    cp /root/.local/bin/pandoc-mustache /usr/local/bin/

ENTRYPOINT ["/app/generate.sh"]
