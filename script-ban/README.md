# Exercice — Bannissement automatique des IP sur un serveur Apache

 ## Objectif

 Mettre en place un système de **bannissement automatique des adresses IP** sur un serveur Apache.

 Le serveur devra détecter les clients qui génèrent un nombre anormal de requêtes en erreur **HTTP 404 (Not Found)** et les bannir automatiquement.

 ## Consignes

 Écrire un **script Bash** permettant de :

 1. Analyser le fichier `access.log` d’Apache.
2. Récupérer les **adresses IP des clients** ainsi que les **codes HTTP** retournés par le serveur.
3. Identifier les adresses IP ayant effectué **plus de 3 requêtes HTTP 404**.
4. Générer automatiquement un fichier de configuration Apache, par exemple `ban.conf`, contenant les règles permettant de bloquer ces adresses IP.
5. Effectuer un **reload d’Apache2** afin que les nouvelles règles de bannissement soient prises en compte.
