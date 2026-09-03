# Panne "Delete File / Busy Disk"

## Résolution 
```bash
$ lsof | grep 11141

tail 11141 ...
...

tail      11141      nespado      3r      REG   0,34 505708544   1587 /tmp/bigfile.img (deleted)

```


```bash
$ kill 11141

$ df -h /tmp
Filesystem      Size  Used Avail Use% Mounted on
tmpfs           483M     0  483M   0% /tmp
[1]+  Terminated              tail -f /tmp/bigfile.img > /dev/null
```
