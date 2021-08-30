FROM ubuntu:latest

ENV PATH=$PATH:/root/.axiom/interact

RUN apt-get update \
    && apt-get install -yq apt-utils build-essential curl gcc \
    readline-common neovim git zsh zsh-syntax-highlighting zsh-autosuggestions jq build-essential python3-pip unzip git p7zip libpcap-dev rubygems ruby-dev grc

WORKDIR /axiom

COPY . .

ENTRYPOINT ["/bin/zsh"]
