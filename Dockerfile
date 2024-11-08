FROM python:3.11

WORKDIR /schemachange

RUN apt-get update 

RUN pip install schemachange

COPY . .

ENTRYPOINT ["schemachange"]

CMD ["--help"]



