FROM nginx:latest
RUN apt-get update && apt-get install procps vim mc net-tools -y 
COPY html/* /usr/share/nginx/html/
# ENV Name Gegham
# ENV AGR 24
# WORKDIR /tmp
#CMD ["nginx", "-g", "daemon off;"]
