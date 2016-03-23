# Weevely

Weevely is a command line web shell dynamically extended over the network at runtime, designed for remote administration and penetration testing. It provides a ssh-like terminal just dropping a PHP script on the target server, even in restricted environments.

The low footprint agent and over 30 modules shape an extensible framework to administrate web accounts and post exploit web servers escalating privileges and moving laterally in the network.

## code source

code from [https://github.com/epinna/weevely3][1]

## Pull

the repository docker pull janes/weevely

## run

```
docker run -it --name weevely janes/weevely 

root@...:# weevely -h
usage: weevely [-h] {terminal,session,generate} ...

positional arguments:
  {terminal,session,generate}
    terminal            Run terminal
    session             Recover an existant a session file
    generate            Generate a new password

optional arguments:
  -h, --help            show this help message and exit
```

[1]: https://github.com/epinna/weevely3