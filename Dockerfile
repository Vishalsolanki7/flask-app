FROM python:3

# setting up the directory for the app in container
WORKDIR /usr/src/app

# copy all the files to the container
COPY . .

# installing all dependencies from requirements 
RUN pip install --no-cache-dir -r requirements.txt

# instructing which port number the container should expose
EXPOSE 5000

# run the command
CMD ["python", "./app.py"]
