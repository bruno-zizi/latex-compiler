FROM ubuntu as pdflatex
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update
RUN apt-get -y install texlive-latex-base texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra
WORKDIR /data
COPY . .
RUN mkdir -p /data/out
RUN chmod -R 777 /data
ENTRYPOINT ["/data/entrypoint.sh"]