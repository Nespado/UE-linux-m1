# Tester et Intéragir via CLI

## Création d‘un socket Unix nommée /tmp/ipc_test.sock (Processus A)

```bash
nc -U -l /tmp/ipc_test.sock
```

- -U : Indique à nc d'utiliser un socket de domaine Unix (AF_UNIX) au lieu d'un socket réseau TCP/IP standard.
- -l : Place nc en mode écoute (listen), attendant une connexion entrante.

## Comment se connecter à un socket et envoyer un message (Processus B)

```bash
echo "Bonjour depuis socat ;" | socat - UNIX-CONNECT:/tmp/ipc_test.sock
```

- echo "..." : Génère la chaîne de texte que vous souhaitez envoyer.

- | (pipe) : Redirige ce texte vers l'entrée standard de socat.

- socat - ... : Le tiret - indique à socat de lire depuis l'entrée standard (STDIN).

- UNIX-CONNECT:/tmp/ipc_test.sock : Spécifie à socat de se connecter au socket Unix existant.

## Lister les sockets Unix actives sur le systèmes

```bash
ss -x -a
```

ou 

```bash
netstat -lx
```
