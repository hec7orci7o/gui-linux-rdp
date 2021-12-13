# Work in progress

## Docker related
### Build th image
```sh
docker build . -t parrot
```
### Run the image
```sh
docker run -it -p 3389:3389 --hostname monkeys parrot
```
### Save image state
```sh
docker commit <docker_names> <user_repository>
```

## Usage related
- **Inside the docker image:** start the xrdp server & change passwd <br>
    ```shell
    ┌─[root@monkeys]─[/home/user]
    └─# service xrdp start
    ```
    ```shell
    ┌─[root@monkeys]─[/home/user]
    └─# passwd root
    ```

- **Inside the host OS**
    connect to your docker image through a rdp client, you can use the default windows 10 RDP client.

    Dir: `localhost:<host_port>` <br>
    User: `root` <br>
    Passwd: `root`
