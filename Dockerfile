FROM ruby:latest

MAINTAINER Jeremiah A. Bohling "jbohling@sycamoreleaf.com"

RUN gem install jekyll bundler

RUN echo "alias ls='ls --color=auto'" >> /root/.bashrc

RUN echo "export PS1='\[\e[0;32m\]\u@\h:\[\e[0;36m\]\w\[\e[0m\]$ '" >> /root/.bashrc

