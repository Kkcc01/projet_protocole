## extrait /etc/dnsmasq.conf

```
domain-needed
expand-hosts
bogus-priv
interface=enp0s3
domain=kaycee.world
cache-size=256
```

## extrait /var/www/kaycee/index.html
```
<html>
<head>
  <title> Kaycee's Website ! </title>
</head>
<body>
  <p> This is my professional website !
</body>
</html>
```

## extrait /etc/apache2/sites-available/kaycee.conf
    ServerAdmin kaycee.christophe@outlook.fr
    DocumentRoot /var/www/kaycee/
    ServerName kaycee.world
