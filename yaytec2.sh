sudo yum install docker -y
sudo systemctl start docker
sudo chmod 777 /var/run/docker.sock

#setting environment variable for the current shell

export AWS_ACCESS_KEY_ID=AKIAZQ3DPF5LBINCBBWX AWS_SECRET_ACCESS_KEY=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 AWS_DEFAULT_REGION=ap-south-1

aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/r3o8w1g0

docker pull public.ecr.aws/r3o8w1g0/test-flask:latest

docker run -p 8000:5000 public.ecr.aws/r3o8w1g0/test-flask:latest
