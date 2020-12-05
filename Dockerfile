FROM python:3.8-slim-buster

ENV PYTHONUNBUFFERED 1

RUN pip install --no-cache-dir spacy==2.2.3

RUN python -m spacy download fr_core_news_sm

RUN pip install --no-cache-dir nltk==3.4.5 && \
  python -m nltk.downloader punkt
