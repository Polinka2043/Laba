#FROM python:3.12-slim
#WORKDIR /app
#COPY requirements.txt .
#RUN pip install -r requirements.txt
#RUN apt-get update && apt-get install -y git
#COPY . .
#RUN git stash
#RUN git checkout v2.0
#WORKDIR /app
#EXPOSE 5002
#ENTRYPOINT ["python"]
#CMD ["add.py"]
FROM python:3.12-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5002
CMD ["python", "app.py"]
