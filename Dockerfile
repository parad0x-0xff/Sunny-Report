FROM ubuntu

WORKDIR /app
ENV DEBIAN_FRONTEND=noninteractive 

RUN apt update && \
    apt install wget pandoc texlive-latex-base texlive-fonts-extra python3-pip -y && \
    pip3 install -U pandoc-mustache

ENTRYPOINT ["/app/generate.sh"]