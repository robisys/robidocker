#
#docker volume create --name weba-app-data
#docker volume create --name webb-app-data

#docker run -it  --rm --volume  weba-app-data:/mnt  --name  wrun -h HOST robidock/opensuse /bin/bash
#docker run -it  --rm --volume  webb-app-data:/mnt  --name  wrun -h HOST robidock/opensuse /bin/bash

#docker run -it  --rm --volume  webb-app-data:/mnt -v "$PWD":/mnt  --name  wrun -h HOST robidock/opensuse /bin/bash

#docker run -dit -p 8083:80 --name runweb -v "$PWD":/usr/local/apache2/htdocs/ robidock/apache-web 
#docker exec -it  runweb /bin/bash


#docker-compose up  -d   
#docker-compose logs             # ctrl-c beendet die Loganzeige
#docker-compose logs web-a       # Ausgabe nur eines Containers
#docker-compose down             # Container stoppen UND löschen


