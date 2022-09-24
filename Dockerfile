FROM python:3.6-slim-stretch

WORKDIR app/

COPY requirements.txt .
COPY entrypoint.sh .

RUN chmod u+x entrypoint.sh
RUN pip install -r requirements.txt

ENTRYPOINT ["/app/entrypoint.sh"]