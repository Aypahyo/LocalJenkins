group=$(stat -c %g /var/run/docker.sock)
cd jenkins
sed -r 's/- (.*) #docker group id/- '"$group"' #docker group id/g' docker-compose.yml -i
docker-compose up -d
cd ..