FROM python:3.11

ENV PYTHONDONTWRITEBYTECODE 1

ENV PYTHONUNBUFFERED 1

RUN mkdir /code


WORKDIR /code

RUN pip install --upgrade pip

COPY ./requirements.txt/ requirements.txt

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["python3","manage.py","runserver", "0.0.0.0:8000"]