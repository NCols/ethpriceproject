FROM cloudron/base:0.11.0
MAINTAINER Authors name <support@cloudron.io>

RUN mkdir -p /app/code
WORKDIR /app/code

COPY ethprice /app/code/
COPY start.sh /app/code/start.sh
COPY requirements.txt /app/code/requirements.txt

EXPOSE 8000

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["/app/code/start.sh"]

