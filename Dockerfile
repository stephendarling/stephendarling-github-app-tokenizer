FROM python:3.6-slim-stretch

COPY requirements.txt .
COPY entrypoint.sh .
COPY token_generator.py .

RUN mv token_generator.py /usr/bin/github_token_generator.py

RUN chmod u+x entrypoint.sh
RUN pip install -r requirements.txt

ENTRYPOINT ["/entrypoint.sh"]