FROM python:3.6-slim-stretch

WORKDIR app/

COPY requirements.txt .
COPY token_generator.py .
COPY entrypoint.sh .

RUN chmod +x entrypoint.sh
RUN pip install -r requirements.tt

CMD ./entrypoint.sh