FROM python:3.11

WORKDIR /schemachange

RUN apt-get update 

RUN apt-get install -y \
    libssl-dev \
    libffi-dev \
    build-essential \
    
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

RUN pip install schemachange

COPY . .

ENTRYPOINT ["schemachange"]

CMD ["--help"]



