## Docker related
### Build th image
```sh
docker build . -t kali
```
### Run the image
```sh
docker run -it -p 3389:3389 --hostname kali kali
```
### Save image state
```sh
docker commit <docker_names> <user_repository>
```

## Usage related
- **Inside the docker image:** start the xrdp protocol & change passwd <br>
    ```shell
    ┌──(root💀kali)-[/home/user]
    └─# service xrdp start
    ```
    ```shell
    ┌──(root💀kali)-[/home/user]
    └─# passwd root
    ```

- **Inside the host OS**
    connect to your docker image through a rdp client, you can use the default windows 10 RDP client.

    Dir: `localhost:<host_port>`
    User: `root`
    Passwd: `root`

## Errors
You may need to change the default port if you are using windows10,
for me 3390 works fine.
