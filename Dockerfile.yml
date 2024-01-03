FROM python:3-alpine

WORKDIR /projectapplication

ADD . /projectapplication

EXPOSE 8000

COPY requirements.txt /projectapplication/

RUN pip3 install -r requirements.txt --no-cache-dir

COPY . /projectapplication

ENTRYPOINT ["python3"]

CMD ["manage.py", "runserver", "0.0.0.0:8000"]