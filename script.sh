docker image build -t my-nginx-image:latest  .

docker network create --subnet=172.19.0.0/16 my_custom_bridge
docker volume create my_custom_volume

docker run -d --name my-nginx-final-container -p 80:80 --network my_custom_bridge -v my_custom_volume:/usr/share/nginx/html my-nginx-image
  