FROM python:3.12-slim
WORKDIR /app
COPY requerimientos.txt /app
RUN pip install -r requerimientos.txt
COPY web /app
EXPOSE 8000
RUN cd /app/web
CMD ["python","manage.py","runserver","0.0.0.0:8000"]
