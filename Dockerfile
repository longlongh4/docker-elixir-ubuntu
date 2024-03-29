FROM ubuntu:16.04

# Install base package
RUN apt-get update && \
    apt-get install -y curl wget git build-essential && \
    wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && dpkg -i erlang-solutions_1.0_all.deb && \
    apt-get update && \
    apt-get install -y esl-erlang && \
    apt-get install -y elixir