FROM python:3.8-slim-buster
WORKDIR /app
COPY ./webapp /app/webapp
RUN pip install -r /app/webapp/require.txt
EXPOSE 5000
CMD ["python", "/app/webapp/flask-app.py"]

