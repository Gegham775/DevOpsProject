# docker image build -t my-nginx-image:latest  .
# docker run -d --name my-nginx-container -p 127.0.0.1:85:80 my-nginx-image:latest
# docker network create --subnet=172.19.0.0/16 my_custom_bridge
# docker run -d --name my-nginx-bridge-container --network my_custom_bridge my-nginx-image
# docker volume create my_custom_volume
# docker run -d --name my-nginx-new-container -v my_custom_volume:/usr/share/nginx/html my-nginx-image


docker image build -t my-nginx-image:latest  .

docker network create --subnet=172.19.0.0/16 my_custom_bridge
docker volume create my_custom_volume

docker run -d --name my-nginx-final-container -p 80:80 --network my_custom_bridge -v my_custom_volume:/usr/share/nginx/html my-nginx-image
  