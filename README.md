# flask-app
A random images flask app deployed to AWS ElasticBeanstalk using Docker.

Using the Dockerfile run the below commands

#Commands required for docker image publish
------------
1. Build Docker Image
docker build -t <TAG> .

2. Run container /w image
docker run -d --publish 8888:5000 <YOURTAG>

3. Login to ECR
aws ecr get-login-password --region <REGION> | docker login --username AWS --password-stdin <ACCOUNTID>.dkr.ecr.<REGIONHERE>.amazonaws.com

4. Tag the version
docker tag test:latest <YOURACCOUNT>.dkr.ecr.<YOURREGION>-1.amazonaws.com/<YOURDOCKERREPO>:<YOURTAG>

5. Upload
docker push <YOURACCOUNT>.dkr.ecr.<YOURREGION>.amazonaws.com/<YOURREPO:YOURTAG>


#Commands required for Elastic Beanstalk
----------------
1. From Elastic beanstalk console : Create New Application > choose :  Web Server Environment and Under base configuration section > Choose Docker   
2. Upload Dockerrun.aws.json file as source code.
  
 
