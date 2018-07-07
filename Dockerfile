FROM kennethreitz/pipenv

ADD . /app

EXPOSE 5000

ENV PYTHON_ENV=docker

CMD python3 run.py
