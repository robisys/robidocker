#docker-compose  -f dockercompose1.yml   up

docker-compose up  -d   
#docker-compose logs             # ctrl-c beendet die Loganzeige
#docker-compose logs rocketchat  # Ausgabe nur eines Containers
#docker-compose down             # Container stoppen UND löschen
#docker-compose config

## docker-clear
# docker ps -a -q |xargs docker stop
# docker ps -q | xargs docker rm

#docker-compose exec mariadb bash
#docker-compose exec nginx bash
#docker-compose exec phpmyadmin sh

