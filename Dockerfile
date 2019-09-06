FROM ubuntu:16.04

# Install base package
RUN apt-get update
RUN apt-get install -y curl wget git build-essential
RUN wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
RUN apt-get update
RUN apt-get install esl-erlang
RUN apt-get install elixir