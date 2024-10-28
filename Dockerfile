FROM python:3.10-alpine

WORKDIR /src

COPY requirements.txt .
COPY ./app /src/app
RUN pip install --no-cache-dir --upgrade -r requirements.txt

EXPOSE 8080
CMD ["fastapi", "run", "app/main.py", "--port", "8080"]
