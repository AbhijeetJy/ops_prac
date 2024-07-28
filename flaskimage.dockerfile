FROM python:3.8-slim-buster
WORKDIR /app
COPY ./webapp .
RUN pip install -r require.txt
EXPOSE 5000
CMD['python', 'flask-app.py']

