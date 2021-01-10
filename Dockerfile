FROM python:3.7

LABEL maintainer="larrylx larryleang@gmail.com"

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "gunicorn", "-w", "2", "-b", "127.0.0.1:4418", \
"--access-logfile", "/data/logs/access.log", \
"--error-logfile", "/data/logs/error.log", \
"main:app" ]
