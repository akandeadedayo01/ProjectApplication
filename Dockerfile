FROM python:3-alpine

WORKDIR /projectapplication

COPY . .

EXPOSE 8000

COPY requirements.txt .

RUN pip3 install -r requirements.txt --no-cache-dir

ENTRYPOINT ["python3"]

CMD ["manage.py", "runserver", "0.0.0.0:8000"]