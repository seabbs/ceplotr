## Start with the shiny docker image
FROM rocker/tidyverse:latest

MAINTAINER "Sam Abbott" contact@samabbott.co.uk

RUN apt-get update -y && \
    apt-get install -y \
    texlive-latex-recommended \
    texlive-fonts-extra \
    texinfo \
    libqpdf-dev \
    libmagick++-dev \
    && apt-get clean

ADD . /home/rstudio/ceplotr

## Install pkgdown for website generation
RUN Rscript -e 'devtools::install_github("r-lib/pkgdown")'

## Install hexsticker to generate package badge.
RUN Rscript -e 'install.packages("hexSticker")'

## Install dev deps
RUN Rscript -e 'devtools::install_dev_deps("home/rstudio/ceplotr")'

## Install the getTBinR
RUN Rscript -e 'devtools::install("home/rstudio/ceplotr")'