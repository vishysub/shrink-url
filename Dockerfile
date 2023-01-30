FROM python:latest

WORKDIR /core

COPY ./requirements.txt /core

RUN pip3 install --no-cache-dir  --upgrade -r requirements.txt

COPY . /core

CMD ["uvicorn", "core.app:home","--host", "0.0.0", "--port", "80"]