FROM rocker/verse:latest

RUN apt-get update && apt-get install -y \
    libxml2-dev \
    libcurl4-openssl-dev \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*

RUN R -e "install.packages(c('tidyverse','ggplot2','caret','randomForest','ggrepel','cluster','factoextra','corrplot','viridis'))"
