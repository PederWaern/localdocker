FROM python:3

RUN mkdir /counter_app

WORKDIR /counter_app

ADD . .

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "manage.py", "runserver"]