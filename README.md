# Demo DB / PHP my admin

Démonstration de l'utilisation de [Docker] et plus précisément [docker-compose]
pour déployer une instance de [MySQL] et y accéder avec les clients graphiques
"web" [PHPMyAdmin] et [Adminer].

## Info

Les containers utilisés sont :
* https://hub.docker.com/_/mysql
* https://hub.docker.com/r/phpmyadmin/phpmyadmin/
* https://hub.docker.com/_/adminer

## Quelques commandes / notes

* `docker-compose up` permet de démarrer le projet
* Le paramètre `restart` défini de quel manière les containers sont rédémarrés ;
  par exemple `always` les rédémarrera après un reboot
* Par défaut, l'utilisateur et le mot-de-passe est `testdb`
* Le fichier `db/init.sql` permet d'initialiser les tables lors du premier 
  démarrage. Voir le §Initializing a fresh instance de la page 
  [Docker Hub de MySQL](ttps://hub.docker.com/_/mysql)
* PHPMyAdmin est diponible sur http://localhost:8088
* Adminier est diponible sur http://localhost:8089
* Le «vrai» client MySQL est disponible dans le container "db". On peut y 
  accéder en faisant `docker exec -it db bash`, puis en utilisant
  `mysql -h localhost -u testdb -p`
   * Voir les db avec `show databases;`
   * Sélectionner une db avec `use testdb;`
   * Voir les tables avec `show tables;`
   * Puis faire les requêtes SQL, par exemple `show columns from t_adresses;` ou
     `select * from t_adresses limit 1;`


[Docker]: https://www.docker.com/
[docker-compose]: https://docs.docker.com/compose/
[MySQL]: https://www.mysql.com/
[PHPMyAdmin]: https://www.phpmyadmin.net/
[Adminer]: https://www.adminer.org/