#docker-compose  -f dockercompose1.yml   up

docker-compose up  -d   
#docker-compose logs             # ctrl-c beendet die Loganzeige
#docker-compose logs rocketchat  # Ausgabe nur eines Containers
#docker-compose down             # Container stoppen UND löschen

# docker ps -a -q |xargs docker stop
# docker ps -q | xargs docker rm

