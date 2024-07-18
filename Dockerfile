FROM python:3.12.4-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt /app/

RUN pip install -r requirements.txt

COPY . /app/

CMD ["pytest"]

CMD ["pytest", "--junitxml=pytest.xml"]
