# Mariadb Create Helper
Reduser tid brukt på legging av ny databaser og kanskje testing av tabell legging.


## Kjøring Requirements
Om du har ikke allerede Mariadb.

- MacOS
```sh
brew install mariadb
```

- Linux (Debian baserte)
```sh
sudo apt install mariadb-server -y
```

- Linux (Red Hat baserte)
```sh
sudo dnf install mariadb-server -y
```

- Linux (Andre)
```sh
sudo package-manager install mariadb-server -y
```

> [!NOTE]
> package-manager er placeholder.


### Start Serveren
- MacOS
```sh
brew services start mariadb
```

- Linux
```sh
sudo systemctl enable mariadb && sudo systemctl start mariadb
```

Valgfritt (sikkere)
```sh
sudo mysql_secure_installation
```

sudo systemctl start mariadb

## Kjøring
For å kjøre programmet, etter `git clone`:

```sh
sh main.sh
```

> [!NOTE]
> Programmet trenger ikke admin tilgang
